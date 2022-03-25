import tkinter as tk
 
def btn_click():
    # 入力した値を取得
    text1 = input_text.get()
    # 入力した値をラベルに出力
    label2['text'] = text1

label0_hover = 0

def enter_func0(event):
    global label0_hover
    print(label3)
    label0_hover = 1

def leave_func0(event):
    global label0_hover
    print("test")
    label0_hover = 0

def main():
    print(str(label0_hover))
    if label0_hover:
        label3["text"] = 'あ'
        label3["bg"] = 'LightGray'
    else:
        label3['text'] = ''
        label3["bg"] = 'gray95'
    baseGround.after(100,main)
    

baseGround = tk.Tk()
# GUIの画面サイズ
baseGround.geometry('300x200')
#GUIの画面タイトル
baseGround.title('入力値をラベルに表示する')
baseGround.configure(bg='gray95')

# ラベル
label0 = tk.Label(text = 'ボスの名前')
label0.bind("<Enter>", enter_func0)
label0.bind("<Leave>", leave_func0)
label0.pack()

# テキストボックス
input_text = tk.Entry()
input_text.pack()

# ボタン
btn = tk.Button(baseGround, text='入力値を出力', command=btn_click)
btn.pack()

# ラベル
label1 = tk.Label(text = '入力値:')
label1.pack()
label2 = tk.Label()
label2.pack()

label3 = tk.Label(text = '')
label3.pack()

main()

#表示
baseGround.mainloop()