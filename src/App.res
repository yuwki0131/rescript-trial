@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div className="p-6">

    <h1 className="text-3xl font-semibold">
      {"TODO APP"->React.string}
    </h1>
    <p>
      {React.string("This is a simple TODO App for a Vite project using ReScript.")}
    </p>
    <h2 className="text-2xl font-semibold mt-5"> {React.string("TODO Form")} </h2>

    <TodoForm.form />

    <TodoList.list />

    <Button onClick={_ => setCount(count => count + 1)}>
      {React.string(`count is ${count->Int.toString}`)}
    </Button>
  </div>
}
