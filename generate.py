#!/usr/bin/env python

import pystache
import os
import json
import codecs
import HTMLParser

API_DIR = "apis"
OUT_DIR = "aws-sdk"


def parse_operations(iterator_fn):
    operations = []
    for op_name, operation in iterator_fn():
        if operation.get("deprecated") is not True:
            doc = operation.get("documentation", " ")
            operation.update({"documentation": doc})
            inp = operation.get("input")
            if inp:
                operation.update({"input_shape_or_empty": inp})
            else:
                operation.update({"input_shape_or_empty": {"shape": "{}"}})
            operations.append(operation)
    return operations


def parse_shapes(iterator_fn):
    shapes = {
        "string": [],
        "structure": [],
        "list": [],
        "double": [],
        "integer": [],
        "long": [],
        "boolean": [],
        "map": [],
        "blob": [],
        "timestamp": [],
        "float": []}

    for shape_name, shape in iterator_fn():
        shape_type = str(shape["type"])
        shape["name"] = shape_name
        # ensure empty documentation if none exists (otherwise mustache will start searching recursively)
        shape.update({"documentation": shape.get("documentation", " ")})
        # remove patterns
        if shape.get("pattern"):
            shape.pop("pattern", None)

        if shape_type == "structure":
            members = []
            for member_name, member in shape["members"].iteritems():
                member["name"] = member_name
                member["documentation"] = member.get("documentation", "").replace("\n", "")
                members.append(member)
            shape["member_names"] = ",".join(shape["members"].keys())
            shape["members"] = members
            if shape.get("required"):
                required = []
                for required_name in shape["required"]:
                    required.append({"name": required_name})
                shape.update({"required": required})
        shapes[shape_type].append(shape)
    return shapes


def generate():
    with open("operations.mtl", 'r') as f:
        op_mtl = f.read()

    for filename in os.listdir(API_DIR):
        if filename.endswith(".normal.json"):
            print("Parsing " + filename)
            j = json.load(open(os.path.join(API_DIR, filename)))

            j["operations"] = parse_operations(j["operations"].iteritems)
            j["shapes"] = parse_shapes(j["shapes"].iteritems)

            out_filename = j["metadata"]["endpointPrefix"].replace(".", "_") + ".lua"
            print("Writing " + out_filename)

            lua = pystache.render(op_mtl, j)
            with codecs.open(os.path.join(OUT_DIR, out_filename), 'wb', "utf-8") as f:
                f.write(HTMLParser.HTMLParser().unescape(lua))


if __name__ == "__main__":
    generate()
