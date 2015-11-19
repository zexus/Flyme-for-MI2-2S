.class Lmiui/hybrid/feature/Contact$2;
.super Lmiui/hybrid/LifecycleListener;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Contact;->pickPhoneNumber(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Contact;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;

.field final synthetic val$request:Lmiui/hybrid/Request;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Contact;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmiui/hybrid/feature/Contact$2;->this$0:Lmiui/hybrid/feature/Contact;

    iput-object p2, p0, Lmiui/hybrid/feature/Contact$2;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 181
    iget-object v2, p0, Lmiui/hybrid/feature/Contact$2;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v2, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 183
    if-ne p1, v3, :cond_0

    .line 184
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 185
    iget-object v2, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v2}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 188
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lmiui/hybrid/feature/Contact$2$1;

    invoke-direct {v0, p0, v1}, Lmiui/hybrid/feature/Contact$2$1;-><init>(Lmiui/hybrid/feature/Contact$2;Landroid/content/ContentResolver;)V

    .line 202
    .local v0, "getContactTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/net/Uri;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    new-array v2, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    .end local v0    # "getContactTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/net/Uri;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-nez p2, :cond_2

    .line 204
    iget-object v2, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v2

    new-instance v3, Lmiui/hybrid/Response;

    const/16 v4, 0x64

    const-string v5, "cancel"

    invoke-direct {v3, v4, v5}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v2, p0, Lmiui/hybrid/feature/Contact$2;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v2

    new-instance v3, Lmiui/hybrid/Response;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v2, v3}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    goto :goto_0
.end method
