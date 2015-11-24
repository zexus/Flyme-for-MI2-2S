.class Lcom/android/settings_ext/aM;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fb:Lcom/android/settings_ext/CryptKeeper;

.field final synthetic ff:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/settings_ext/aM;->fb:Lcom/android/settings_ext/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings_ext/aM;->ff:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings_ext/aM;->ff:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 770
    return-void
.end method
