@react.component
let make = () => {
  let (isActive, setIsActive) = React.useState(() => false)
  let (isPaused, setIsPaused) = React.useState(() => true)
  let (time, setTime) = React.useState(() => 0)

  React.useEffect1(() => {
    let interval: ref<option<intervalId>> = ref(None)

    switch (isActive, isPaused) {
     | (true, false) => {
       let id = setInterval(() => {
        setTime((time) => time +10)
       }, 10)
       
       interval := Some(id)
     }
     | _=> {
      switch interval.contents {
        | Some(interval ) => {
          clearInterval(interval)
        }
        | _ => {
          ()
        }
      }
     }
    }

    Some(() => {
      switch interval.contents {
        | Some(interval ) => {
          clearInterval(interval)
        }
        | _ => {
          ()
        }
      }
    })

}, [isActive, isPaused])

  let handleStart = (_e) => {
    setIsActive((_prev) => true)
    setIsPaused((_prev) => false)
  }

  let handlePauseResume = (_e) => {
    setIsPaused((prev) => !prev)
  }

  let handleReset = (_e) => {
    setIsActive((_prev) => false)
    setTime((_prev) => 0)
  }
  <div className="bg-red-500  flex justify-center h-screen">
  <div className=` container mx-auto flex flex-col justify-center items-center `>
  <h1 className="mb-12 flex justify-center text-semibold text-6xl text-white">{React.string("Rescript stopwatch")}</h1>
  <div className=`h-80  border border-white rounded-xl text-white shadow-xl flex flex-col justify-between p-8`>
  <Timer time={time}/>
  <Controls
  isActive={isActive}
  isPaused={isPaused}
  onStartClick={handleStart}
  onPauseResumeClick={handlePauseResume}
  onResetClick={handleReset}
  />
  </div>
  </div>
  </div>
}
