.class Lcom/android/settings/l;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic I:Lcom/android/settings/i;


# direct methods
.method constructor <init>(Lcom/android/settings/i;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/l;->I:Lcom/android/settings/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/l;->I:Lcom/android/settings/i;

    invoke-static {v0}, Lcom/android/settings/i;->d(Lcom/android/settings/i;)V

    .line 139
    return-void
.end method
