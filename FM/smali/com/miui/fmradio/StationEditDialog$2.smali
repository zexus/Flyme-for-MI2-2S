.class Lcom/miui/fmradio/StationEditDialog$2;
.super Ljava/lang/Object;
.source "StationEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/StationEditDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/StationEditDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/StationEditDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 110
    iget-object v7, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mFavorCheckBox:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/miui/fmradio/StationEditDialog;->access$100(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mFavorCheckBox:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/miui/fmradio/StationEditDialog;->access$100(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v4

    .line 111
    .local v0, "favor":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 112
    .local v4, "type":I
    :goto_1
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mIsAddNewStation:Z
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$200(Lcom/miui/fmradio/StationEditDialog;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    const/4 v5, 0x0

    .line 115
    .local v5, "typedFreq":F
    :try_start_0
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$000(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 118
    :goto_2
    invoke-static {v5}, Lcom/miui/fmradio/Utils;->getFrequency(F)I

    move-result v1

    .line 119
    .local v1, "freq":I
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$300(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "label":Ljava/lang/String;
    invoke-static {}, Lcom/miui/fmradio/Utils;->getMinFrequency()I

    move-result v6

    if-lt v1, v6, :cond_4

    invoke-static {}, Lcom/miui/fmradio/Utils;->getMaxFrequency()I

    move-result v6

    if-gt v1, v6, :cond_4

    .line 122
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mListener:Lcom/miui/fmradio/StationEditDialog$EditStationListener;
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$400(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationEditDialog$EditStationListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mListener:Lcom/miui/fmradio/StationEditDialog$EditStationListener;
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$400(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationEditDialog$EditStationListener;

    move-result-object v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    invoke-virtual {v7}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0020

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    invoke-interface {v6, v1, v2, v4}, Lcom/miui/fmradio/StationEditDialog$EditStationListener;->onStationChanged(ILjava/lang/String;I)V

    .line 134
    .end local v1    # "freq":I
    .end local v5    # "typedFreq":F
    :cond_1
    :goto_3
    return-void

    .end local v0    # "favor":Z
    .end local v4    # "type":I
    :cond_2
    move v0, v6

    .line 110
    goto :goto_0

    .restart local v0    # "favor":Z
    :cond_3
    move v4, v6

    .line 111
    goto :goto_1

    .line 127
    .restart local v1    # "freq":I
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v5    # "typedFreq":F
    :cond_4
    const-string v6, "Fm:StationEditDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Edit failed, invalid frequency : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 130
    .end local v1    # "freq":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v5    # "typedFreq":F
    :cond_5
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mLabel:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$300(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mListener:Lcom/miui/fmradio/StationEditDialog$EditStationListener;
    invoke-static {v6}, Lcom/miui/fmradio/StationEditDialog;->access$400(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationEditDialog$EditStationListener;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mStationItem:Lcom/miui/fmradio/StationItem;
    invoke-static {v7}, Lcom/miui/fmradio/StationEditDialog;->access$500(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationItem;

    move-result-object v7

    iget v7, v7, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/miui/fmradio/StationEditDialog$2;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mStationItem:Lcom/miui/fmradio/StationItem;
    invoke-static {v8}, Lcom/miui/fmradio/StationEditDialog;->access$500(Lcom/miui/fmradio/StationEditDialog;)Lcom/miui/fmradio/StationItem;

    move-result-object v8

    iget-object v3, v8, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface {v6, v7, v3, v4}, Lcom/miui/fmradio/StationEditDialog$EditStationListener;->onStationChanged(ILjava/lang/String;I)V

    goto :goto_3

    .line 116
    .restart local v5    # "typedFreq":F
    :catch_0
    move-exception v6

    goto/16 :goto_2
.end method
