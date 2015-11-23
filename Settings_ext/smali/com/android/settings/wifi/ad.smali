.class Lcom/android/settings/wifi/ad;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic avy:Lcom/android/settings/wifi/aa;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aa;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wifi/ad;->avy:Lcom/android/settings/wifi/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v1, Lmiui/widget/GuidePopupWindow;

    iget-object v0, p0, Lcom/android/settings/wifi/ad;->avy:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 160
    const v0, 0x7f090cb1

    invoke-virtual {v1, v0}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 161
    invoke-virtual {v1, v3}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->avy:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 164
    iget-object v2, p0, Lcom/android/settings/wifi/ad;->avy:Lcom/android/settings/wifi/aa;

    invoke-static {v2}, Lcom/android/settings/wifi/aa;->c(Lcom/android/settings/wifi/aa;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    const/4 v0, 0x1

    invoke-virtual {v1, p1, v3, v3, v0}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 166
    return-void
.end method
