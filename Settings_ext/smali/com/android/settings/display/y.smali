.class Lcom/android/settings/display/y;
.super Ljava/lang/Object;
.source "PaperModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic VF:Lcom/android/settings/display/PaperModeFragment;

.field final synthetic VI:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/display/y;->VF:Lcom/android/settings/display/PaperModeFragment;

    iput-object p2, p0, Lcom/android/settings/display/y;->VI:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/settings/display/y;->VF:Lcom/android/settings/display/PaperModeFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/y;->VI:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/d;->m(Landroid/content/Context;Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/display/y;->VF:Lcom/android/settings/display/PaperModeFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/display/d;->l(Landroid/content/Context;Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/display/y;->VF:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->b(Lcom/android/settings/display/PaperModeFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    return-void
.end method
