.class public Lmiui/util/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# static fields
.field private static final DEBUG_JAR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lmiui/util/CertificateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Ljava/io/File;Ljava/util/Set;)Z
    .locals 18
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "sigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 32
    const/4 v12, 0x0

    .line 33
    .local v12, "readBuffer":[B
    const-class v15, Lmiui/util/CertificateUtils;

    monitor-enter v15

    .line 34
    :try_start_0
    sget-object v13, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 35
    .local v13, "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v13, :cond_0

    .line 36
    const/4 v14, 0x0

    sput-object v14, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [B

    move-object v12, v0

    .line 39
    :cond_0
    if-nez v12, :cond_1

    .line 40
    const/16 v14, 0x2000

    new-array v12, v14, [B

    .line 41
    new-instance v13, Ljava/lang/ref/WeakReference;

    .end local v13    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    invoke-direct {v13, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .restart local v13    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_3

    .line 49
    const-class v14, Ljava/util/jar/JarFile;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/miui/whetstone/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarFile;

    .line 55
    .local v8, "jarFile":Ljava/util/jar/JarFile;
    :goto_0
    const/4 v2, 0x0

    .line 56
    .local v2, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 57
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 58
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/JarEntry;

    .line 59
    .local v9, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_2

    .line 62
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "name":Ljava/lang/String;
    const-string v14, "META-INF/"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 67
    invoke-static {v8, v9, v12}, Lmiui/util/CertificateUtils;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v10

    .line 74
    .local v10, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v10, :cond_4

    .line 75
    sget-object v14, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JarFile "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has no certificates at entry "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; ignoring!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    const/4 v14, 0x0

    .line 129
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v8    # "jarFile":Ljava/util/jar/JarFile;
    .end local v9    # "je":Ljava/util/jar/JarEntry;
    .end local v10    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v11    # "name":Ljava/lang/String;
    :goto_2
    return v14

    .line 43
    .end local v13    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 52
    .restart local v13    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_3
    :try_start_3
    const-class v14, Ljava/util/jar/JarFile;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/miui/whetstone/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarFile;

    .restart local v8    # "jarFile":Ljava/util/jar/JarFile;
    goto/16 :goto_0

    .line 80
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v9    # "je":Ljava/util/jar/JarEntry;
    .restart local v10    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 81
    move-object v2, v10

    goto/16 :goto_1

    .line 84
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v14, v2

    if-ge v6, v14, :cond_2

    .line 85
    const/4 v5, 0x0

    .line 86
    .local v5, "found":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    array-length v14, v10

    if-ge v7, v14, :cond_6

    .line 87
    aget-object v14, v2, v6

    if-eqz v14, :cond_8

    aget-object v14, v2, v6

    aget-object v15, v10, v7

    invoke-virtual {v14, v15}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 89
    const/4 v5, 0x1

    .line 93
    :cond_6
    if-eqz v5, :cond_7

    array-length v14, v2

    array-length v15, v10

    if-eq v14, v15, :cond_9

    .line 94
    :cond_7
    sget-object v14, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JarFile "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has mismatched certificates at entry "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; ignoring!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    .line 98
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 86
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 84
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 103
    .end local v5    # "found":Z
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v9    # "je":Ljava/util/jar/JarEntry;
    .end local v10    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v11    # "name":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V

    .line 105
    const-class v15, Lmiui/util/CertificateUtils;

    monitor-enter v15
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 106
    :try_start_4
    sput-object v13, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 107
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    if-eqz v2, :cond_b

    :try_start_5
    array-length v14, v2

    if-lez v14, :cond_b

    .line 110
    array-length v1, v2

    .line 111
    .local v1, "N":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v1, :cond_c

    .line 112
    new-instance v14, Landroid/content/pm/Signature;

    aget-object v15, v2, v6

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/content/pm/Signature;-><init>([B)V

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 107
    .end local v1    # "N":I
    .end local v6    # "i":I
    :catchall_1
    move-exception v14

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 119
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v8    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    sget-object v14, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception reading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 115
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v8    # "jarFile":Ljava/util/jar/JarFile;
    :cond_b
    :try_start_8
    sget-object v14, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JarFile "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has no certificates; ignoring!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 117
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 122
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v8    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v3

    .line 123
    .local v3, "e":Ljava/io/IOException;
    sget-object v14, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception reading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 125
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v14, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception reading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 129
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "N":I
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v6    # "i":I
    .restart local v8    # "jarFile":Ljava/util/jar/JarFile;
    :cond_c
    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 133
    if-nez p0, :cond_1

    .line 134
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 153
    :goto_0
    return v6

    .line 134
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 138
    :cond_1
    if-nez p1, :cond_2

    .line 139
    const/4 v6, -0x2

    goto :goto_0

    .line 141
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 143
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 147
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 151
    const/4 v6, 0x0

    goto :goto_0

    .line 153
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 161
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 162
    .local v1, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 166
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 174
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
