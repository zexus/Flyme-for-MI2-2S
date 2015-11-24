.class Lcom/android/settings_ext/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic alZ:Lcom/android/settings_ext/users/EditUserInfoController;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/EditUserInfoController;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings_ext/users/EditUserInfoController$1;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings_ext/users/EditUserInfoController$1;->alZ:Lcom/android/settings_ext/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ext/users/EditUserInfoController;->clear()V

    .line 187
    return-void
.end method
