if getgenv().Calc then return getgenv().Calc end

--// Assign_0
getgenv().Calc = {math}

--// Assign_1
local Calc = getgenv().Calc
local math = Calc.math

local function SolveCubic(coeff, x)
	local a1 = coeff[2] / coeff[3]
	local a2 = coeff[1] / coeff[3]
	local a3 = coeff[0] / coeff[3]

	local Q = (a1 * a1 - 3 * a2) / 9
	local R = (2 * a1 * a1 * a1 - 9 * a1 * a2 + 27 * a3) / 54
	local Qcubed = Q * Q * Q
	local d = Qcubed - R * R

	if (d >= 0) then
		local theta = math.acos(R / math.Sqrt(Qcubed))
		local sqrtQ = math.sqrt(Q)

		x[0] = -2 * sqrtQ * math.cos(theta / 3) - a1 / 3
		x[1] = -2 * sqrtQ * math.cos((theta + 2 * math.pi) / 3) - a1 / 3
		x[2] = -2 * sqrtQ * math.cos((theta + 4 * math.pi) / 3) - a1 / 3

		return x == 3
	else
		local e = math.pow(math.sqrt(-d) + math.abs(R), 1.0 / 3.0)

		if (R > 0) then
			e = -e
		end

		x[0] = (e + Q / e) - a1 / 3

		return x == 1
	end
end

function Calc.solveQuartic(a, b, c, d, e, x)
	local a1 = d / e
	local a2 = c / e
	local a3 = b / e
	local a4 = a / e

	local q = a2 - a1 * a1 * 3 / 8
	local r = a3 - a1 * a2 / 2 + a1 * a1 * a1 / 8
	local s = a4 - a1 * a3 / 4 + a1 * a1 * a2 / 16 - 3 * a1 * a1 * a1 * a1 / 256

	local coeff_cubic = {}
	coeff_cubic.Max = 4

	setmetatable(coeff_cubic, {__newindex = function(self, index, value)
		if #self < (self.Max or math.huge) then 
			rawset(self, index, value) 
		end
	end})

	local roots_cubic = {}
	roots_cubic.Max = 3

	setmetatable(roots_cubic, {__newindex = function(self, index, value)
		if #self < (self.Max or math.huge) then 
			rawset(self, index, value) 
		end
	end})

	local positive_root = 0

	coeff_cubic[3] = 1
	coeff_cubic[2] = q / 2
	coeff_cubic[1] = (q * q - 4 * s) / 16
	coeff_cubic[0] = -r * r / 64

	local nRoots = SolveCubic(coeff_cubic, roots_cubic)

	for i = 1, #nRoots do
		if (roots_cubic[i] > 0) then
			positive_root = roots_cubic[i]
		end
	end

	local k = math.sqrt(positive_root);
	local l = 2 * k * k + q / 2 - r / (4 * k)
	local m = 2 * k * k + q / 2 + r / (4 * k)

	nRoots = 0

	if (k * k - l > 0) then
		x[nRoots + 0] = -k - math.sqrt(k * k - l) - a1 / 4
		x[nRoots + 1] = -k + math.sqrt(k * k - l) - a1 / 4

		nRoots += 2
	end

	if (k * k - m > 0) then
		x[nRoots + 0] = k - math.sqrt(k * k - m) - a1 / 4
		x[nRoots + 1] = k + math.sqrt(k * k - m) - a1 / 4

		nRoots += 2
	end

	return nRoots
end
