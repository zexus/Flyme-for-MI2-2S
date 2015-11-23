.class Lcom/android/settings/b/g;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# instance fields
.field final synthetic adu:[Landroid/net/NetworkPolicy;

.field final synthetic adv:Lcom/android/settings/b/f;


# direct methods
.method constructor <init>(Lcom/android/settings/b/f;[Landroid/net/NetworkPolicy;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/b/g;->adv:Lcom/android/settings/b/f;

    iput-object p2, p0, Lcom/android/settings/b/g;->adu:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/b/g;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/b/g;->adv:Lcom/android/settings/b/f;

    iget-object v1, p0, Lcom/android/settings/b/g;->adu:[Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Lcom/android/settings/b/f;->a([Landroid/net/NetworkPolicy;)V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method
