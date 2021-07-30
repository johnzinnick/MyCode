def process_numbers(unproc_list):
  
    new_list = []
    if isinstance(unproc_list, list) == False:
        return new_list
    for item in unproc_list:
        if isinstance(item,int):
            new_list.append(item)
        elif isinstance(item,str):
            if item.isnumeric():
                converted_item = int(item)
                new_list.append(converted_item)
    new_list.sort()
    return new_list

def process_names(unproc_list):

    new_list = []
    if isinstance(unproc_list, list) == False:
        return new_list
    for item in unproc_list:
        if isinstance(item, str):
            if item.isnumeric() == False:
                new_list.append(item)
    new_list.sort()
    return new_list