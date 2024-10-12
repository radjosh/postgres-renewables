d = {}

with open('energy_dataset.csv.PRE-CULL') as fh:
    for line in fh:
        line = line.strip()
        if not line: continue
        line = line.split(',')
        k = line[0] + line[1] + line[2]
        d[k] = line

for _, v in d.items():
    print(','.join(v))
