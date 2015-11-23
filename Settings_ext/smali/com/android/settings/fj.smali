.class Lcom/android/settings_ext/fj;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tN:Lcom/android/settings_ext/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ext/fj;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/fj;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/OwnerInfoSettings;->b(Lcom/android/settings_ext/OwnerInfoSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ext/fj;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/OwnerInfoSettings;->b(Lcom/android/settings_ext/OwnerInfoSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
