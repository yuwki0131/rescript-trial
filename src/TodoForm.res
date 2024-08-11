%%raw("import './TodoForm.css'")

@react.component
let form = () =>
  <div className="todo-form">
    <div>
      <p>
      {React.string("タイトル:")}
      </p>
      <input type_="text" />
      <p>
      {React.string("詳細:")}
      </p>
      <textarea />
      <div>
      <button>{React.string("登録")}</button>
      </div>
    </div>
  </div>
