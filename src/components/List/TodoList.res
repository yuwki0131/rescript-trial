%%raw("import './TodoList.css'")

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
        <tr>
          <td>{"1"->React.string}</td>
          <td>{"title"->React.string}</td>
          <td>{"description"->React.string}</td>
        </tr>
        <tr>
          <td>{"2"->React.string}</td>
          <td>{"title"->React.string}</td>
          <td>{"description"->React.string}</td>
        </tr>
        <tr>
          <td>{"3"->React.string}</td>
          <td>{"title"->React.string}</td>
          <td>{"description"->React.string}</td>
        </tr>
      </tbody>
    </table>
  </div>
