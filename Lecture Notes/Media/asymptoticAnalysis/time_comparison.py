from sort import bubble_sorted, merge_sorted
from random import randint
from datetime import datetime

def mean(array):
	s = 0
	for n in array:
		s += n
	return s/len(array)

trials = 10000
n = 100
bubble_T = []
merge_T = []
for i in range(n):
	print(i)
	trial = []
	for j in range(trials):
		trial.append([randint(0,1000) for number in range(i)])

	bubble_scores = []
	merge_scores = []
	for j in range(trials):
		bubble_T_before = datetime.now()
		bubble_sorted(trial[j])
		bubble_T_after = datetime.now()

		bubble_delta = bubble_T_after - bubble_T_before
		bubble_scores.append(bubble_delta.total_seconds()*1000)

		merge_T_before = datetime.now()
		merge_sorted(trial[j])
		merge_T_after = datetime.now()

		merge_delta = merge_T_after - merge_T_before
		merge_scores.append(merge_delta.total_seconds()*1000)

	bubble_T.append(mean(bubble_scores))
	merge_T.append(mean(merge_scores))

file_contents = ''
for i in range(n):
	file_contents += str(bubble_T[i]) + ',' + str(merge_T[i]) + '\n'

with open('scores3.csv','w+') as csv:
	csv.write(file_contents)
