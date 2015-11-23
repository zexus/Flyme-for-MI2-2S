.class Lcom/android/settings_ext/aL;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fb:Lcom/android/settings_ext/CryptKeeper;

.field final synthetic ff:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/settings_ext/aL;->fb:Lcom/android/settings_ext/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings_ext/aL;->ff:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/settings_ext/aL;->ff:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 745
    return-void
.end method
