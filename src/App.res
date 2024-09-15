@react.component
let make = () => {

  let (isModalOpen, setModalOpen) = React.useState(_ => false)

  <div className="p-6">

    <h1 className="text-3xl font-semibold">
      {"TODO APP"->React.string}
    </h1>
    <p>
      {React.string("This is a simple TODO App for a Vite project using ReScript.")}
    </p>
    <h2 className="text-2xl font-semibold mt-5"> {React.string("TODO Form")} </h2>


  <div>
    <Button onClick={_ => setModalOpen(_ => true)}>{"モーダルを開く"->React.string}</Button>
    <Modal isOpen={isModalOpen} onClose={() => setModalOpen(_ => false)} />
  </div>

    <TodoForm.form />

    <TodoList.list />
  </div>
}
