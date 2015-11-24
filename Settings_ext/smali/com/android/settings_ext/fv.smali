.class Lcom/android/settings_ext/fv;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uy:Lcom/android/settings_ext/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ProxySelector;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings_ext/fv;->uy:Lcom/android/settings_ext/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/fv;->uy:Lcom/android/settings_ext/ProxySelector;

    iget-object v0, v0, Lcom/android/settings_ext/ProxySelector;->uo:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/fv;->uy:Lcom/android/settings_ext/ProxySelector;

    iget-object v0, v0, Lcom/android/settings_ext/ProxySelector;->up:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ext/fv;->uy:Lcom/android/settings_ext/ProxySelector;

    iget-object v0, v0, Lcom/android/settings_ext/ProxySelector;->uq:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method
