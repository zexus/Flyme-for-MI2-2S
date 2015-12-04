.class Lcom/miui/fmradio/StationEditDialog$1;
.super Ljava/lang/Object;
.source "StationEditDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 57
    iput-object p1, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 88
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "enable":Z
    const/4 v2, 0x0

    .line 67
    .local v2, "typedFreq":F
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/fmradio/StationEditDialog;->access$000(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 70
    :goto_0
    invoke-static {v2}, Lcom/miui/fmradio/Utils;->getFrequency(F)I

    move-result v1

    .line 71
    .local v1, "freq":I
    invoke-static {}, Lcom/miui/fmradio/Utils;->getMinFrequency()I

    move-result v3

    if-lt v1, v3, :cond_2

    invoke-static {}, Lcom/miui/fmradio/Utils;->getMaxFrequency()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    invoke-virtual {v3}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/fmradio/StationEditDialog;->access$000(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    invoke-virtual {v4}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/miui/fmradio/StationEditDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 78
    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 79
    iget-object v3, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    # getter for: Lcom/miui/fmradio/StationEditDialog;->mFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/fmradio/StationEditDialog;->access$000(Lcom/miui/fmradio/StationEditDialog;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/fmradio/StationEditDialog$1;->this$0:Lcom/miui/fmradio/StationEditDialog;

    invoke-virtual {v4}, Lcom/miui/fmradio/StationEditDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    .end local v1    # "freq":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method
