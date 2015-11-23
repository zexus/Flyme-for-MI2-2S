.class Lcom/android/settings/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Cj:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->Cj:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->Cj:Lcom/android/settings/accounts/ChooseAccountActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->Cj:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 138
    return-void
.end method
