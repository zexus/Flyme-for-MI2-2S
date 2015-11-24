.class Lcom/android/settings_ext/fh;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic tN:Lcom/android/settings_ext/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ext/fh;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/fh;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/OwnerInfoSettings;->a(Lcom/android/settings_ext/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/fh;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/OwnerInfoSettings;->a(Lcom/android/settings_ext/OwnerInfoSettings;Z)Z

    .line 110
    if-eqz p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/fh;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 112
    iget-object v1, p0, Lcom/android/settings_ext/fh;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-static {v1}, Lcom/android/settings_ext/OwnerInfoSettings;->a(Lcom/android/settings_ext/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 115
    :cond_0
    return-void
.end method
