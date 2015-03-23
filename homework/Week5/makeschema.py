#!/opt/local/bin/python

import sys
import re

def parse_row(columnline):
    columndata = {}
    match = re.match("^\s*([*-])\s*(\w+)\s+(.*)", columnline)
    if match:
        # First the column name
        columndata['name'] = match.group(2)
        # Then whether it's a primary key
        if match.group(1) == '*':
            columndata['pk'] = True
        # Then either the datatype or the foreign referent.
        columndef = re.sub('\s*$', '', match.group(3))
        isreference = re.split('\s*=>\s*', columndef)
        if len(isreference) > 1:
            columndata['referent'] = isreference[1]
        else:
            columndata['datatype'] = isreference[0]
    return columndata

def find_datatype(tables, tablename, column):
    tableinfo = None
    for ti in tables:
        if ti['name'] == tablename:
            tableinfo = ti
            break
    if tableinfo is None:
        return None

    for columninfo in tableinfo['columns']:
        if columninfo['name'] == column:
            return columninfo['datatype']
    return None

def make_sql(tables):
    for tabledata in tables:
        print('CREATE TABLE %s (' % tabledata['name'])
        columnlines = []
        for column in tabledata['columns']:
            columnwords = [column['name']]
            if 'datatype' not in column:
                # Have to look it up.
                referent = column['referent'].split('.')
                column['datatype'] = find_datatype(tables, referent[0], referent[1])
            # Carry on.
            columnwords.append(column['datatype'].upper())
            if 'pk' in column:
                columnwords.append('PRIMARY KEY AUTOINCREMENT')
            if 'referent' in column:
                referent = column['referent'].split('.')
                columnwords.append('REFERENCES %s(%s)' % (referent[0], referent[1]))
            columnlines.append("\t%s" % ' '.join(columnwords))
        print(",\n".join(columnlines))
        print(");\n")

alltables = []
current_table = None
fh = open(sys.argv[1])
for line in fh:
    m = re.match('^(\w+)\s*$', line)
    if m:
        # It's a new table. Store the previous one if necessary.
        if current_table is not None:
            alltables.append(current_table)
        current_table = {'name': m.group(1), 'columns': []}
    else:
        columndata = parse_row(line)
        if columndata:
            current_table['columns'].append(columndata)
else:
    if current_table is not None:
        alltables.append(current_table)
fh.close()

make_sql(alltables)