### A Pluto.jl notebook ###
# v0.20.22

using Markdown
using InteractiveUtils

# ╔═╡ ef5fac36-ce31-4a2a-bd9c-a667ad812a6e
A = [[1 -1 2]
	[2 3 -1]
	[-2 1 2]];

# ╔═╡ 374aa4eb-46c1-4b14-a4d0-ac4d01ff33fc
B = [[2 0]
	[-1 0]
	[1 1]];

# ╔═╡ b9134d99-add8-42f9-a22b-9466a879fdcb
C = [[3 2]
	[-1 2]];

# ╔═╡ cf3008eb-de7b-4d57-b0d1-c0ce14ba5139
D = [[4  0.5]
	 [-2 -1]];

# ╔═╡ cd404059-7975-4ee8-b15b-d15cbf3988ff
E = [[-1.5 2 -0.5]
	[4 -2 1]
	[-0.5 0 -0.5]];

# ╔═╡ 8e90e10e-06b3-4bbd-b97c-96769b4c70b3
#1
A + B

# ╔═╡ f36f03c1-805f-41c2-91ea-05952aeabd2a
#2
A + 2E

# ╔═╡ fa92f42e-4bd0-4be3-b700-18442901e58b
#3
B * C

# ╔═╡ 9744fc45-7ff9-49f1-8e83-4e8354f271a1
#4
C * B

# ╔═╡ fe0270b9-bfa0-4305-804a-a324823af999
#4
(B * C) + B

# ╔═╡ a3658e1d-152a-4ec4-bf15-f3454c55e1a1
#6
D * B'

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.5"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╠═ef5fac36-ce31-4a2a-bd9c-a667ad812a6e
# ╠═374aa4eb-46c1-4b14-a4d0-ac4d01ff33fc
# ╠═b9134d99-add8-42f9-a22b-9466a879fdcb
# ╠═cf3008eb-de7b-4d57-b0d1-c0ce14ba5139
# ╠═cd404059-7975-4ee8-b15b-d15cbf3988ff
# ╠═8e90e10e-06b3-4bbd-b97c-96769b4c70b3
# ╠═f36f03c1-805f-41c2-91ea-05952aeabd2a
# ╠═fa92f42e-4bd0-4be3-b700-18442901e58b
# ╠═9744fc45-7ff9-49f1-8e83-4e8354f271a1
# ╠═fe0270b9-bfa0-4305-804a-a324823af999
# ╠═a3658e1d-152a-4ec4-bf15-f3454c55e1a1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
