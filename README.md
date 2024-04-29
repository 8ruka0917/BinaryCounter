大学の授業でVerilog HDLで開発した2数カウンタです。
8個のLEDを使って、消灯を0、点灯を1とします。
初期状態ではすべてを消灯させ、オールゼロを表します。
約1秒ごとにカウントアップが実現されます。
LEDを点灯、消灯させるには、対応のフリップフロップの値を１＝点灯、0＝消灯にすることにより行います。
クロックの動作周波数は100MHzです。
入力信号：CLK（クロック）、RST（リセット）
出力信号：OUT（8ビット）