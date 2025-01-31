; CONSTANTS
E :=  2.71828182846
PI := 3.14159265359
TAU := 6.28318530718

; MATHS
sign(x) {
	return (x > 0) ? 1 : (x < 0) ? -1 : 0
}
map(x, in_min, in_max, out_min, out_max) {
  return (x - in_min)*(out_max - out_min)/(in_max - in_min) + out_min
}

; COLOUR
sRGB_2_lin(x) {
    return (x <= 0.04045) ? x/12.92 : ((x + 0.055)/1.055)**2.4
}
lin_2_sRGB(x) {
    return (x <= 0.0031308) ? x*12.92 : 1.055*x**(1/2.4) - 0.055
}