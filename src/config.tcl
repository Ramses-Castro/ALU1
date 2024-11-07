# Configuración del usuario
set script_dir [file dirname [file normalize [info script]]]

# Cargar la configuración del usuario desde el archivo user_config.tcl
# - Define el nombre del módulo y lista los archivos de origen
source $::env(DESIGN_DIR)/user_config.tcl

# Ahorro de tiempo en algunas verificaciones
set ::env(RUN_KLAYOUT_XOR) 0
set ::env(RUN_KLAYOUT_DRC) 0

# Evitar buffers de reloj en las salidas
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

# Permitir uso de celdas específicas en sky130
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

# Configuración de los pines
# Establecer ubicación de los pines en el diseño
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# Ajustar el margen superior e inferior
set ::env(TOP_MARGIN_MULT) 2
set ::env(BOTTOM_MARGIN_MULT) 2

# Tamaño absoluto del dado
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 150 170"
set ::env(FP_CORE_UTIL) 55

# Parámetros de colocación
set ::env(PL_BASIC_PLACEMENT) {0}
set ::env(GRT_ALLOW_CONGESTION) "1"

# Longitud de los pines de entrada y salida
set ::env(FP_IO_HLENGTH) 2
set ::env(FP_IO_VLENGTH) 2

# Uso de celdas de decap para solucionar problemas de densidad LI
set ::env(DECAP_CELL) "\
    sky130_fd_sc_hd__decap_3 \
    sky130_fd_sc_hd__decap_4 \
    sky130_fd_sc_hd__decap_6 \
    sky130_fd_sc_hd__decap_8 \
    sky130_ef_sc_hd__decap_12"

# Configuración de reloj
set ::env(CLOCK_TREE_SYNTH) 1
# Periodo en ns (ejemplo de 10 kHz)
set ::env(CLOCK_PERIOD) "20000"
set ::env(CLOCK_PORT) {mclk}

# Márgenes de slack/hold
# set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.8 
# set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.8 

# Configuración de capas y redes de energía
set ::env(DESIGN_IS_CORE) 0
set ::env(RT_MAX_LAYER) {met4}

# Conectar a los rieles de energía
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

