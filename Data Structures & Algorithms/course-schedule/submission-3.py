class Solution:
	def canFinish(self, numCourses: int, prerequisites: List[List[int]]) -> bool:
		# represents courses left to take before we can take indegree[i]
		indegree = [0] * numCourses
		# adj[i] holds the list of courses that depend on course i
		# so if we finish course i (add it to queue),
		# these are the courses we unlock
		adj = [[] for i in range(numCourses)]
		
		for course, prereq in prerequisites:
			# every time we see a prereq,
			# that means that's one more prereq that course has
			indegree[course] += 1
			# add course as a course that becomes available after taking prereq
			adj[prereq].append(course)
			
		q = deque()
		for n in range(numCourses):
			# if indegree[n] == 0 it means we can take that courses 
			# bc it doesn't have any prereqs
			if indegree[n] == 0:
				q.append(n)
			
		finish = 0
		while q:
			node = q.popleft()
			# add 1 to finish because by popping node from queue,
			# it's like saying we took that class
			finish += 1
			# look through the classes that require that class as a prereq
			for neighbor in adj[node]:
				# since we took course 'node', that's one less class
				# we need to take before we can take course 'neighbor'
				indegree[neighbor] -= 1
				# if indegree[neighbor] is 0, 
				# that means no more prereqs left to take for neighbor
				# so we are free to take that class
				if indegree[neighbor] == 0:
					q.append(neighbor)
		
		# if by the end we have finished as many c
		# ourses as there are number of courses,
		# then it's possible
		# otherwise, it's not
		return finish == numCourses