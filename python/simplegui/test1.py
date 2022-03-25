import PySimpleGUI as sg

BUTTON_TEXT_2 = 'モデルパーツを追加'

#  セクション1 - オプションの設定と標準レイアウト
sg.theme('Dark')

models = [
    {
        "id":"", "parent":"","opposite":"","tp":[0,0,0], "ModelItem":{"id":"","CustomModelData":""}
    }
]

layout = []

layout.append([sg.Text('Python GUI')])
layout.append([sg.Text('Boss Name', size=(10, 1)), sg.InputText('')])
layout.append([sg.Text('id', size=(10, 1)), sg.InputText('')])
layout.append([sg.HorizontalSeparator()])
layout.append([sg.HorizontalSeparator(color='Black')])
for model in models:
    layout.append([
        sg.Checkbox("", default=True),
        sg.Text('id'), sg.InputText(model["id"], size=(15, 1)),
        sg.Text('parent'), sg.InputText(model["parent"], size=(15, 1)),
        sg.Text('opposite'), sg.InputText(model["opposite"], size=(15, 1)),
        sg.Frame('Model Item', [[sg.Text('id'), sg.InputText(model["ModelItem"]["id"], size=(15, 1)),sg.Text("CustomModelData"), sg.InputText(str(model["ModelItem"]["CustomModelData"]), size=(10, 1))]])
    ])
    layout.append([sg.Text('tp  ^'), sg.InputText(str(model["tp"][0]), size=(5, 1)),sg.Text('^'), sg.InputText(str(model["tp"][1]), size=(5, 1)),sg.Text('^'), sg.InputText(str(model["tp"][2]), size=(5, 1))])
    layout.append([sg.HorizontalSeparator(color='Black')])


layout.append([sg.Submit(button_text=BUTTON_TEXT_2, key = 'add model part')])

layout.append([sg.Submit(button_text='実行ボタン')])


# セクション 2 - ウィンドウの生成
window = sg.Window('', layout)

# セクション 3 - イベントループ
while True:
    event, values = window.read()
    print('event')

    if event is None:
        print('exit')
        break

    if event == '実行ボタン':
        show_message = "名前：" + values[0] + 'が入力されました。\n'
        show_message += "住所：" + values[1] + 'が入力されました。\n'
        print(show_message)

        # ポップアップ
        sg.popup(show_message)

    if event == 'add model part':
        print("test")
        models.append({"id":"", "parent":"","opposite":"","tp":[0,0,0], "ModelItem":{"id":"","CustomModelData":""}})
    
# セクション 4 - ウィンドウの破棄と終了
window.close()