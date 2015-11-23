.class Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;
.super Ljava/lang/Object;
.source "BackgroundLocationManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic acp:Lcom/android/settings_ext/applications/AppViewHolder;

.field final synthetic acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;Lcom/android/settings_ext/applications/AppViewHolder;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    iput-object p2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acp:Lcom/android/settings_ext/applications/AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acp:Lcom/android/settings_ext/applications/AppViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acp:Lcom/android/settings_ext/applications/AppViewHolder;

    iget-object v1, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->a(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->aF(Z)V

    .line 137
    if-eqz v0, :cond_1

    const v0, 0x7f090d50

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acp:Lcom/android/settings_ext/applications/AppViewHolder;

    iget-object v1, v1, Lcom/android/settings_ext/applications/AppViewHolder;->Dz:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$1;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_1
    const v0, 0x7f090d4f

    goto :goto_1
.end method
