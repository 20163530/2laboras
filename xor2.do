# Sukuriamas katalogas work
vlib work

# Kompiliuojamas failas xor2.vhd
vcom -work work xor2.vhd

# Modeliavimas atliekamas su xor2 failu
vsim xor2

# Pamatyti rezultatus atidaromi langai wave, signals, structure
view wave
view signals
view structure

# Nurodomi signalai norimi matyti lange wave, t. y. paduodami i_bit1 ir i_bit2 bei rezultato o_xor
add wave -noupdate -divider -height 32 Inputs 
add wave i_bit1
add wave i_bit2

add wave -noupdate -divider -height 32 Outputs
add wave o_xor

# Suformuojami testiniai signalai. Pirmos dvi eilutės apibrėžia signalus pradžioje, t. y. ties 0 ns. Toliau išvardytos reikšmių lentelės eilutės nurodant pradžią ns 
force -deposit i_bit1 0 0
force -deposit i_bit2 0 0

force -deposit i_bit1 0 10
force -deposit i_bit2 0 10

force -deposit i_bit1 0 20
force -deposit i_bit2 1 20

force -deposit i_bit1 1 30
force -deposit i_bit2 0 30

force -deposit i_bit1 1 40
force -deposit i_bit2 1 40

# Paleisti modeliavimą 50 ns
run 50 ns