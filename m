Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8832FD60EB
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Oct 2019 13:07:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iJyCf-0001Lt-1v; Mon, 14 Oct 2019 11:07:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iJyCc-0001Ld-6S
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 11:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i9DjK1crT2KsMjPSziebtobrCEvri2MXjPPH8L21P0M=; b=huEWeusxjAdP+4UskyQwaQw2JR
 A8U5EMuSqvZAs5CDHKaGdlrTYDAepd7VLzBwodIW2S/VnvdO9qDeuWSIs6Kl11lig2GSSehpDvJ2e
 K3Uz+5H6gsOapzAdmUJwT1JtKk5LAlD1MNxJgP1yOB9xxSA2MW7t2uJlHQN8QYjXbY20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i9DjK1crT2KsMjPSziebtobrCEvri2MXjPPH8L21P0M=; b=JPow8MBQ/6cTltGJ799oO8fTMS
 0RVw+LvjGzODdKhM/tW/yLx3ZBbqWZNHWlbcEnScXg7imo3Zn8rgYuZAuFAmW7lzZaDLWaX/tTG60
 k0x79O6Mckh6XfDuQhQMm2b4oKaNUdEE1zxnTiW8NUwvJHOxMyQTPlVMHh3wKeBZhptY=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJyCa-000FXG-Qd
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 11:07:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 0FC2248D2D;
 Mon, 14 Oct 2019 22:07:42 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1571051261; bh=hkIbwJXB06tt587ntMhCLCJWmg64kbHMsbJm3XkbRcw=; b=l
 v/G8E5GAEBXPJ6kIHb5hrN2X4f/sSK2f1ZcVvM5oA75557AJct2C09fXKgtQWIKn
 FqLByG4ViJ7kNWVizaLdlggyMyU5lVqaAVYa9KsQX2i/UcwhoGUrcyPWZw4Uk/3N
 2uhh0Kie/pz+W39yALYsDnFVGsH4JGRL0okHQIt70o=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id jyLOBdnJ9-os; Mon, 14 Oct 2019 22:07:41 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id EB22248D2E;
 Mon, 14 Oct 2019 22:07:41 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 3E38148D2D;
 Mon, 14 Oct 2019 22:07:41 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon, 14 Oct 2019 18:07:20 +0700
Message-Id: <20191014110722.13248-4-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iJyCa-000FXG-Qd
Subject: [tipc-discussion] [PATCH RFC 3/5] tipc: add new AEAD key structure
 for user API
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The new structure 'tipc_aead_key' is added to the 'tipc.h' for user to
be able to transfer a key to TIPC in kernel. Netlink will be used for
this purpose in the later commits.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 include/uapi/linux/tipc.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
index 7df026ea6aff..a1b64a916797 100644
--- a/include/uapi/linux/tipc.h
+++ b/include/uapi/linux/tipc.h
@@ -232,6 +232,27 @@ struct tipc_sioc_nodeid_req {
 	char node_id[TIPC_NODEID_LEN];
 };
 
+/*
+ * TIPC Crypto, AEAD
+ */
+#define TIPC_AEAD_ALG_NAME		(32)
+
+struct tipc_aead_key {
+	char alg_name[TIPC_AEAD_ALG_NAME];
+	unsigned int keylen;	/* in bytes */
+	char key[];
+};
+
+#define TIPC_AEAD_KEYLEN_MIN		(16 + 4)
+#define TIPC_AEAD_KEYLEN_MAX		(32 + 4)
+#define TIPC_AEAD_KEY_SIZE_MAX		(sizeof(struct tipc_aead_key) + \
+							TIPC_AEAD_KEYLEN_MAX)
+
+static inline int tipc_aead_key_size(struct tipc_aead_key *key)
+{
+	return sizeof(*key) + key->keylen;
+}
+
 /* The macros and functions below are deprecated:
  */
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
