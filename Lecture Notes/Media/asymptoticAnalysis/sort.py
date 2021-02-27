def swapped(u,v):
	return v,u

def bubble_sorted(array):
	i = 0
	while i < len(array):
		j = 0
		while j < len(array) - 1:
			if array[j] > array[j+1]:
				array[j], array[j+1] = swapped(array[j],array[j+1])
			j += 1
		i += 1
	return array

def merged_array(u, v):
	merged_result = []
	i = 0
	j = 0
	while len(merged_result) < len(u) + len(v):
		if i < len(u) and (j >= len(v) or u[i] < v[j]):
			merged_result.append(u[i])
			i += 1
		else:
			merged_result.append(v[j])
			j += 1

	return merged_result

def merge_sorted(array):
	if len(array) <= 1:
		return array
	else:
		return merged_array(merge_sorted(array[:len(array)//2]),merge_sorted(array[len(array)//2:]))
