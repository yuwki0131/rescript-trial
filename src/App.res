%%raw("import './App.css'")

@react.component
let make = () => {
  let (isModalOpen, setModalOpen) = React.useState(_ => false)

  <div>
    <h1>
      {"TODO APP"->React.string}
    </h1>
    <p>
      {React.string("This is a simple TODO App for a Vite project using ReScript.")}
    </p>
    <div className="content-container">
      <div className="add-button-container">
        <Button onClick={_ => setModalOpen(_ => true)}>{"追加する"->React.string}</Button>
        <Modal
          isOpen={isModalOpen}
          onClose={() => setModalOpen(_ => false)}
          title="TODOを追加する"
          >
          <TodoForm.form />
        </Modal>
      </div>
      <hr />
      <h2> {React.string("TODOリスト")} </h2>
      <TodoList.list />
    </div>
  </div>
}
