import tkinter as tk

WINDOW_SIZE = [300,200]
TEXT_COLOR = 'black'
BACKGROUND_COLOR = 'gray95'
CAPTION_COLOR = 'LightGray'

X0 = 10
Y0 = 30

HIDE_POS = [-100, -100]

BOSS_NAME = 'ボスの名前'
BOSS_ID = '識別用の名前'

ENTRIES = [
    {'id' : 0, 'label' : BOSS_NAME, 'caption' : 'ボスの名前'},
    {'id' : 1, 'label' : BOSS_ID, 'caption' : 'すべて小文字'}
]

label_hover = 0

def enter_func(event):
    caption["bg"] = CAPTION_COLOR
    caption.place(x = event.widget.winfo_x() + 10, y = event.widget.winfo_y() - 20)

def leave_func(event):
    caption.place(x = HIDE_POS[0], y = HIDE_POS[1])


window = tk.Tk()
# GUIの画面サイズ
window.geometry(str(WINDOW_SIZE[0]) + 'x' + str(WINDOW_SIZE[1]))
#GUIの画面タイトル
window.title('タイトル')
window.configure(bg=BACKGROUND_COLOR)

# ラベル

i = 0

for entry in ENTRIES:
    # ラベル
    x_i = X0
    y_i = Y0 + i*20
    label = tk.Label(text = entry['label'])
    label.bind("<Enter>", enter_func)
    label.bind("<Leave>", leave_func)
    label.place(x = x_i, y = y_i)
    # キャプション
    caption = tk.Label(text = entry['caption'])
    caption.place(x = HIDE_POS[0], y = HIDE_POS[1])
    # エントリー
    input = tk.Entry()
    input.place(x = x_i + label.winfo_reqwidth() + 5, y = y_i)
    i += 1

#表示
window.mainloop()