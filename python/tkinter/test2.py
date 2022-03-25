import tkinter as tk

WINDOW_SIZE = [300,200]
TEXT_COLOR = 'black'
BACKGROUND_COLOR = 'gray95'
CAPTION_COLOR = 'LightGray'

HIDE_POS = [-100, -100]

def btn_click0():
    # 入力した値を取得
    text1 = input_text0.get()

label0_hover = 0

def enter_func0(event):
    label0_caption["bg"] = CAPTION_COLOR
    label0_caption.place(x = label0_pos[0] + 10, y = label0_pos[1] - 20)

def leave_func0(event):
    label0_caption.place(x = HIDE_POS[0], y = HIDE_POS[1])


window = tk.Tk()
# GUIの画面サイズ
#window.geometry('300x200')
window.geometry(str(WINDOW_SIZE[0]) + 'x' + str(WINDOW_SIZE[1]))
#GUIの画面タイトル
window.title('入力値をラベルに表示する')
window.configure(bg='gray95')

# ラベル
label0_pos = [10, 10]
label0 = tk.Label(text = 'ボスの名前')
label0.bind("<Enter>", enter_func0)
label0.bind("<Leave>", leave_func0)
label0.place(x = label0_pos[0], y = label0_pos[1])
label0_caption = tk.Label(text = 'ボスの名前を入力')
label0_caption.place(x = HIDE_POS[0] + 10, y = HIDE_POS[1] + 10)

# テキストボックス
input_text0 = tk.Entry()
input_text0.place(x = label0_pos[0] + label0.winfo_reqwidth() + 5, y = label0_pos[1])

# ボタン
btn = tk.Button(window, text='入力値を出力', command=btn_click0)
btn.pack()

# ラベル
label1 = tk.Label(text = '入力値:')
label1.pack()

#表示
window.mainloop()