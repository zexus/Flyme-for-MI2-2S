.class Lmiui/hybrid/feature/Contact$2$1;
.super Landroid/os/AsyncTask;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Contact$2;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/hybrid/feature/Contact$2;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Contact$2;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lmiui/hybrid/feature/Contact$2$1;->this$1:Lmiui/hybrid/feature/Contact$2;

    iput-object p2, p0, Lmiui/hybrid/feature/Contact$2$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/hybrid/feature/Contact$2$1;->doInBackground([Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 192
    iget-object v0, p0, Lmiui/hybrid/feature/Contact$2$1;->val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lmiui/hybrid/feature/Contact;->getContactPhoneNumber(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    invoke-static {v0, v1}, Lmiui/hybrid/feature/Contact;->access$100(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/hybrid/feature/Contact$2$1;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 197
    iget-object v0, p0, Lmiui/hybrid/feature/Contact$2$1;->this$1:Lmiui/hybrid/feature/Contact$2;

    iget-object v0, v0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v0}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 199
    return-void
.end method
