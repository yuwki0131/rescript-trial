%%raw("import './Modal.css'")

@react.component
let make = (~isOpen, ~onClose, ~title, ~children) => {
  if (!isOpen) {
    React.null
  } else {
    <div className="modal-overlay" onClick={_ => onClose()}>
      <div className="modal-content" onClick={e => e->ReactEvent.Mouse.stopPropagation}>
        <h2 className="title">{title->React.string}</h2>
        {children}
        <button
          className="close-button"
          onClick={_ => onClose()}>
          {"閉じる"->React.string}
        </button>
      </div>
    </div>
  }
}
