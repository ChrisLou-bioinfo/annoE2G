annoENSG<-function(data=vsd.expr,datafrom="TCGA"){
  vsd.expr<-data
  if (datafrom=="TCGA"){
    vsd.expr$TCGA.ID<-rownames(vsd.expr)
    vsd.exprG <- merge(annoENSG,vsd.expr,by="TCGA.ID")
  }else{
    vsd.expr$ENSG<-rownames(vsd.expr)
    vsd.exprG <- merge(annoENSG,vsd.expr,by="ENSG")
  }
  return(vsd.exprG)
}
