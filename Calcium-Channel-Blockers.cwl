cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  calcium-channel-blockers-astella---primary:
    run: calcium-channel-blockers-astella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  calcium-channel-blockers-360mg---primary:
    run: calcium-channel-blockers-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-astella---primary/output
  calcium-channel-blockers-150mg---primary:
    run: calcium-channel-blockers-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-360mg---primary/output
  calcium-channel-blockers-viazem---primary:
    run: calcium-channel-blockers-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-150mg---primary/output
  calcium-channel-blockers-motens---primary:
    run: calcium-channel-blockers-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-viazem---primary/output
  calcium-channel-blockers-neofel---primary:
    run: calcium-channel-blockers-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-motens---primary/output
  calcium-channel-blockers-recordati---primary:
    run: calcium-channel-blockers-recordati---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-neofel---primary/output
  calcium-channel-blockers-solution---primary:
    run: calcium-channel-blockers-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-recordati---primary/output
  calcium-channel-blockers-125mg---primary:
    run: calcium-channel-blockers-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-solution---primary/output
  calcium-channel-blockers-slowrelease---primary:
    run: calcium-channel-blockers-slowrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-125mg---primary/output
  calcium-channel-blockers-nicardipine---primary:
    run: calcium-channel-blockers-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-slowrelease---primary/output
  calcium-channel-blockers-100mg---primary:
    run: calcium-channel-blockers-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-nicardipine---primary/output
  calcium-channel-blockers-adipine---primary:
    run: calcium-channel-blockers-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-100mg---primary/output
  calcium-channel-blockers-bicarzem---primary:
    run: calcium-channel-blockers-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-adipine---primary/output
  calcium-channel-blockers-200mg---primary:
    run: calcium-channel-blockers-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-bicarzem---primary/output
  calcium-channel-blockers-cordilox---primary:
    run: calcium-channel-blockers-cordilox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-200mg---primary/output
  calcium-channel-blockers-cabren---primary:
    run: calcium-channel-blockers-cabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-cordilox---primary/output
  calcium-channel-blockers-zemret---primary:
    run: calcium-channel-blockers-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-cabren---primary/output
  calcium-channel-blockers-zemtard---primary:
    run: calcium-channel-blockers-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-zemret---primary/output
  calcium-channel-blockers-valsartan---primary:
    run: calcium-channel-blockers-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-zemtard---primary/output
  eastern-calcium-channel-blockers---primary:
    run: eastern-calcium-channel-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-valsartan---primary/output
  calcium-channel-blockers-felotens---primary:
    run: calcium-channel-blockers-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: eastern-calcium-channel-blockers---primary/output
  calcium-channel-blockers-merck---primary:
    run: calcium-channel-blockers-merck---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-felotens---primary/output
  calcium-channel-blockers-pliva---primary:
    run: calcium-channel-blockers-pliva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-merck---primary/output
  calcium-channel-blockers-discovery---primary:
    run: calcium-channel-blockers-discovery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-pliva---primary/output
  calcium-channel-blockers-napppharm---primary:
    run: calcium-channel-blockers-napppharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-discovery---primary/output
  calcium-channel-blockers-veratil---primary:
    run: calcium-channel-blockers-veratil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-napppharm---primary/output
  calcium-channel-blockers-180mg---primary:
    run: calcium-channel-blockers-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-veratil---primary/output
  calcium-channel-blockers-verapamil---primary:
    run: calcium-channel-blockers-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-180mg---primary/output
  calcium-channel-blockers-angitil---primary:
    run: calcium-channel-blockers-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-verapamil---primary/output
  calcium-channel-blockers-nifopress---primary:
    run: calcium-channel-blockers-nifopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-angitil---primary/output
  calcium-channel-blockers-coated---primary:
    run: calcium-channel-blockers-coated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-nifopress---primary/output
  calcium-channel-blockers-abbott---primary:
    run: calcium-channel-blockers-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-coated---primary/output
  calcium-channel-blockers-novartis---primary:
    run: calcium-channel-blockers-novartis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-abbott---primary/output
  calcium-channel-blockers-hillcross---primary:
    run: calcium-channel-blockers-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-novartis---primary/output
  calcium-channel-blockers-berkatens---primary:
    run: calcium-channel-blockers-berkatens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-hillcross---primary/output
  calcium-channel-blockers-120mg---primary:
    run: calcium-channel-blockers-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-berkatens---primary/output
  calcium-channel-blockers-300mg---primary:
    run: calcium-channel-blockers-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-120mg---primary/output
  calcium-channel-blockers-neozipine---primary:
    run: calcium-channel-blockers-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-300mg---primary/output
  calcium-channel-blockers-disogram---primary:
    run: calcium-channel-blockers-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-neozipine---primary/output
  calcium-channel-blockers-securon---primary:
    run: calcium-channel-blockers-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-disogram---primary/output
  calcium-channel-blockers-suspension---primary:
    run: calcium-channel-blockers-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-securon---primary/output
  calcium-channel-blockers-tildiem---primary:
    run: calcium-channel-blockers-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-suspension---primary/output
  calcium-channel-blockers-kenzem---primary:
    run: calcium-channel-blockers-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-tildiem---primary/output
  calcium-channel-blockers-elanpharma---primary:
    run: calcium-channel-blockers-elanpharma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-kenzem---primary/output
  calcium-channel-blockers-felogen---primary:
    run: calcium-channel-blockers-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-elanpharma---primary/output
  calcium-channel-blockers-nimodrel---primary:
    run: calcium-channel-blockers-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-felogen---primary/output
  calcium-channel-blockers-calanif---primary:
    run: calcium-channel-blockers-calanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-nimodrel---primary/output
  calcium-channel-blockers-sugarfree---primary:
    run: calcium-channel-blockers-sugarfree---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-calanif---primary/output
  calcium-channel-blockers-verapress---primary:
    run: calcium-channel-blockers-verapress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-sugarfree---primary/output
  calcium-channel-blockers-dilzem---primary:
    run: calcium-channel-blockers-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-verapress---primary/output
  calcium-channel-blockers-triapin---primary:
    run: calcium-channel-blockers-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-dilzem---primary/output
  calcium-channel-blockers-lacidipine---primary:
    run: calcium-channel-blockers-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-triapin---primary/output
  calcium-channel-blockers-liquid---primary:
    run: calcium-channel-blockers-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-lacidipine---primary/output
  calcium-channel-blockers-daiicsank---primary:
    run: calcium-channel-blockers-daiicsank---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-liquid---primary/output
  calcium-channel-blockers-hydrochlorothiazide---primary:
    run: calcium-channel-blockers-hydrochlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-daiicsank---primary/output
  calcium-channel-blockers-lercanidipine---primary:
    run: calcium-channel-blockers-lercanidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-hydrochlorothiazide---primary/output
  calcium-channel-blockers-cardioplen---primary:
    run: calcium-channel-blockers-cardioplen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-lercanidipine---primary/output
  calcium-channel-blockers-roche---primary:
    run: calcium-channel-blockers-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-cardioplen---primary/output
  calcium-channel-blockers-mercury---primary:
    run: calcium-channel-blockers-mercury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-roche---primary/output
  calcium-channel-blockers-angiopine---primary:
    run: calcium-channel-blockers-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-mercury---primary/output
  calcium-channel-blockers-actavis---primary:
    run: calcium-channel-blockers-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-angiopine---primary/output
  calcium-channel-blockers-pfizer---primary:
    run: calcium-channel-blockers-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-actavis---primary/output
  calcium-channel-blockers-chanelle---primary:
    run: calcium-channel-blockers-chanelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-pfizer---primary/output
  calcium-channel-blockers-zurich---primary:
    run: calcium-channel-blockers-zurich---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-chanelle---primary/output
  calcium-channel-blockers-medoxomil---primary:
    run: calcium-channel-blockers-medoxomil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-zurich---primary/output
  calcium-channel-blockers-calchan---primary:
    run: calcium-channel-blockers-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-medoxomil---primary/output
  calcium-channel-blockers-parmid---primary:
    run: calcium-channel-blockers-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-calchan---primary/output
  calcium-channel-blockers-cardilate---primary:
    run: calcium-channel-blockers-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-parmid---primary/output
  calcium-channel-blockers-ranbaxy---primary:
    run: calcium-channel-blockers-ranbaxy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-cardilate---primary/output
  calcium-channel-blockers-adalat---primary:
    run: calcium-channel-blockers-adalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-ranbaxy---primary/output
  calcium-channel-blockers-tensipine---primary:
    run: calcium-channel-blockers-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-adalat---primary/output
  calcium-channel-blockers-valni---primary:
    run: calcium-channel-blockers-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-tensipine---primary/output
  calcium-channel-blockers-nivaten---primary:
    run: calcium-channel-blockers-nivaten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-valni---primary/output
  calcium-channel-blockers-mibefradil---primary:
    run: calcium-channel-blockers-mibefradil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-nivaten---primary/output
  calcium-channel-blockers-zentiva---primary:
    run: calcium-channel-blockers-zentiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-mibefradil---primary/output
  calcium-channel-blockers-160mg---primary:
    run: calcium-channel-blockers-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-zentiva---primary/output
  calcium-channel-blockers-chiesi---primary:
    run: calcium-channel-blockers-chiesi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-160mg---primary/output
  calcium-channel-blockers-bayer---primary:
    run: calcium-channel-blockers-bayer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-chiesi---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: calcium-channel-blockers-bayer---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
