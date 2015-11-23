.class Lcom/android/settings/k;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic I:Lcom/android/settings/i;


# direct methods
.method constructor <init>(Lcom/android/settings/i;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/k;->I:Lcom/android/settings/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/settings/k;->I:Lcom/android/settings/i;

    iget-object v0, p0, Lcom/android/settings/k;->I:Lcom/android/settings/i;

    invoke-static {v0}, Lcom/android/settings/i;->a(Lcom/android/settings/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-static {v1, v0}, Lcom/android/settings/i;->a(Lcom/android/settings/i;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 126
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/k;->I:Lcom/android/settings/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/i;->a(Lcom/android/settings/i;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 130
    return-void
.end method
