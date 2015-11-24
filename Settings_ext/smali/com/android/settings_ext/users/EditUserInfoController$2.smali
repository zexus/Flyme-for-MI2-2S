.class Lcom/android/settings_ext/users/EditUserInfoController$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic alZ:Lcom/android/settings_ext/users/EditUserInfoController;

.field final synthetic ama:Landroid/widget/EditText;

.field final synthetic amb:Ljava/lang/CharSequence;

.field final synthetic amc:Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic amd:Landroid/graphics/drawable/Drawable;

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->ama:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amb:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amc:Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amd:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 147
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->ama:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amb:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amb:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amc:Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amc:Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;->d(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/settings_ext/users/EditUserInfoController;->b(Lcom/android/settings_ext/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings_ext/users/EditUserInfoController;->a(Lcom/android/settings_ext/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/settings_ext/users/EditUserInfoController;->c(Lcom/android/settings_ext/users/EditUserInfoController;)Lcom/android/settings_ext/users/EditUserPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/users/EditUserPhotoController;->su()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/settings_ext/users/EditUserInfoController;->c(Lcom/android/settings_ext/users/EditUserInfoController;)Lcom/android/settings_ext/users/EditUserPhotoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/users/EditUserPhotoController;->st()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amc:Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->amc:Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v1, v0}, Lcom/android/settings_ext/users/EditUserInfoController$OnContentChangedCallback;->c(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_3
    new-instance v1, Lcom/android/settings_ext/users/EditUserInfoController$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/users/EditUserInfoController$2$1;-><init>(Lcom/android/settings_ext/users/EditUserInfoController$2;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ext/users/EditUserInfoController$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/users/EditUserInfoController$2;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ext/users/EditUserInfoController;->clear()V

    .line 181
    return-void
.end method
