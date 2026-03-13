### A Pluto.jl notebook ###
# v0.20.22

using Markdown
using InteractiveUtils

# ╔═╡ 8c7a9765-6384-4aa1-a58d-a21bffeacb53
using LinearAlgebra

# ╔═╡ ef5fac36-ce31-4a2a-bd9c-a667ad812a6e
# ╠═╡ disabled = true
#=╠═╡
A = [[1 -1 -2]
	[2 3 -1]
	[-2 1 2]];
  ╠═╡ =#

# ╔═╡ 374aa4eb-46c1-4b14-a4d0-ac4d01ff33fc
# ╠═╡ disabled = true
#=╠═╡
B = [[2 0]
	[-1 0]
	[1 1]];
  ╠═╡ =#

# ╔═╡ b9134d99-add8-42f9-a22b-9466a879fdcb
# ╠═╡ disabled = true
#=╠═╡
C = [[3 2]
	[-1 2]];
  ╠═╡ =#

# ╔═╡ cf3008eb-de7b-4d57-b0d1-c0ce14ba5139
# ╠═╡ disabled = true
#=╠═╡
D = [[4  0.5]
	 [-2 -1]];
  ╠═╡ =#

# ╔═╡ cd404059-7975-4ee8-b15b-d15cbf3988ff
# ╠═╡ disabled = true
#=╠═╡
E = [[-1.5 1 -0.5]
	[4 -2 1]
	[-0.5 0 -0.5]];
  ╠═╡ =#

# ╔═╡ 2f342dcf-ddb4-44ed-b27c-24c7e7cbffb1
begin
	p = [2, 3];
	q = [-1, 2];
	r = [-1, -2];
	s = [3, -1];
	t = [-2, 2];
end

# ╔═╡ 057d3ff0-a6f6-463f-b38e-82c6cd5bf92e
[[-2 3]
[1 2]] * t

# ╔═╡ 683508e5-e1ea-42e6-8e35-50f42b0afd03
HShear = [[1 1]
		 [0 1]];

# ╔═╡ 3aabf8f7-4c55-4b02-b952-02ad33dd642c
VFlip = [[1 0]
		[0 -1]];

# ╔═╡ 503be047-03d0-49f5-bfa5-0891c5391ede
VFlip * HShear

# ╔═╡ 755a7d73-f0f8-4b27-8867-433f62fc3716
HShear * VFlip

# ╔═╡ ee7c42f8-a654-40eb-ad34-00cadff5991f
det([[-2 3]
	[1 2]])

# ╔═╡ e8e5ea41-bf5e-4e04-8c9a-8a6a4b2143c5
begin
	A = [[1 -1 -2]
	[2 3 -4]
	[-2 1 4]];
	B = [[2 -4 2]
	[0 8 1]
	[-3 2 5]];
	C = [[3 2]
	[-1 2]];
	D = [[4 0.5]
	[-2 -1]];
	E = [[-1.5 1 -0.5]
	[4 -2 1]
	[-0.5 0 -0.5]];
end

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

# ╔═╡ 34c080c2-a349-4803-a84f-527931572a89
det(A)

# ╔═╡ a7543abd-0268-465f-8cd4-de3a58c15291
det(B)

# ╔═╡ af057582-2dbc-4601-aac9-d3f24ec8fb46
inv(A)

# ╔═╡ ad3636f0-37e9-4a09-aa8d-8dde8e052e25
inv(Rational.(B))

# ╔═╡ 626ab259-3bec-4c9a-99bc-59b5456b02af
inv(Rational.(C))

# ╔═╡ 372d0f00-c350-414b-b49c-3a9d7b3f417e
inv(Rational.(D))

# ╔═╡ 62d75850-f68f-4671-8bff-8caf3be13c1a
inv(Rational.(E))

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.5"
manifest_format = "2.0"
project_hash = "f352ceee806168c8ae38887a01d7bae6ca62470b"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.3.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.12.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.29+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"
"""

# ╔═╡ Cell order:
# ╠═8c7a9765-6384-4aa1-a58d-a21bffeacb53
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
# ╠═2f342dcf-ddb4-44ed-b27c-24c7e7cbffb1
# ╠═057d3ff0-a6f6-463f-b38e-82c6cd5bf92e
# ╠═683508e5-e1ea-42e6-8e35-50f42b0afd03
# ╠═3aabf8f7-4c55-4b02-b952-02ad33dd642c
# ╠═503be047-03d0-49f5-bfa5-0891c5391ede
# ╠═755a7d73-f0f8-4b27-8867-433f62fc3716
# ╠═ee7c42f8-a654-40eb-ad34-00cadff5991f
# ╠═e8e5ea41-bf5e-4e04-8c9a-8a6a4b2143c5
# ╠═34c080c2-a349-4803-a84f-527931572a89
# ╠═a7543abd-0268-465f-8cd4-de3a58c15291
# ╠═af057582-2dbc-4601-aac9-d3f24ec8fb46
# ╠═ad3636f0-37e9-4a09-aa8d-8dde8e052e25
# ╠═626ab259-3bec-4c9a-99bc-59b5456b02af
# ╠═372d0f00-c350-414b-b49c-3a9d7b3f417e
# ╠═62d75850-f68f-4671-8bff-8caf3be13c1a
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
