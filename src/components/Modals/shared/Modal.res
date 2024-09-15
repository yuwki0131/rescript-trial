%%raw("import './Modal.css'")

@react.component
let make = (~isOpen, ~onClose, ~children) => {
  if (!isOpen) {
    React.null
  } else {
    <div className="modal-overlay" onClick={_ => onClose()}>
      <div className="modal-content" onClick={e => e->ReactEvent.Mouse.stopPropagation}>
        <h2>{"モーダルのタイトル"->React.string}</h2>
        {children}
        <button onClick={_ => onClose()}>{"閉じる"->React.string}</button>
      </div>
    </div>
  }
}
