.class Lcom/android/settings_ext/fx;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic uy:Lcom/android/settings_ext/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ProxySelector;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings_ext/fx;->uy:Lcom/android/settings_ext/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 271
    if-eqz p2, :cond_0

    .line 272
    check-cast p1, Landroid/widget/TextView;

    .line 273
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 275
    :cond_0
    return-void
.end method
