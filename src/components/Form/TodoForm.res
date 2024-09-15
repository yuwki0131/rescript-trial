%%raw("import './TodoForm.css'")

@react.component
let form = () =>
  <div className="todo-form">
    <div className="item">
      <div className="item-name">
        {React.string("タイトル")}
      </div>
      <input type_="text" />
    </div>
    <div className="item">
      <div className="item-name">
        {React.string("詳細")}
      </div>
      <textarea />
    </div>
    <Button>{React.string("登録")}</Button>
  </div>
