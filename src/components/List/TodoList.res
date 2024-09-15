%%raw("import './TodoList.css'")

type displayTodo = {id: string, title: string, description: string}

let todos = [
  {id: "1231", title: "買い物に行く", description: "食材を買ってくる"},
  {id: "1233", title: "料理を作る", description: "台所で料理を作る"},
  {id: "1234", title: "食事を取る", description: "リビングで食事をする"},
]

@react.component
let list = () =>
  <div className="todo-list-container">
    <table>
      <thead>
        <tr>
          <th>{"Task ID"->React.string}</th>
          <th>{"Title"->React.string}</th>
          <th>{"Description"->React.string}</th>
        </tr>
      </thead>
      <tbody>
        {Array.map(todos, todo => {
          <tr key={todo.id}>
            <td>{todo.id->React.string}</td>
            <td>{todo.title->React.string}</td>
            <td>{todo.description->React.string}</td>
          </tr>
        })->React.array}
      </tbody>
    </table>
  </div>
