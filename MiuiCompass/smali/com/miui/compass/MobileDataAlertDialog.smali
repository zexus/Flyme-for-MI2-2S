.class public Lcom/miui/compass/MobileDataAlertDialog;
.super Landroid/app/AlertDialog;
.source "MobileDataAlertDialog.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/miui/compass/MobileDataAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/miui/compass/MobileDataAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/miui/compass/MobileDataAlertDialog;->setTitle(I)V

    .line 19
    invoke-virtual {p0}, Lcom/miui/compass/MobileDataAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/compass/MobileDataAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/compass/MobileDataAlertDialog;->setView(Landroid/view/View;)V

    .line 21
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
