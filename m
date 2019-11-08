Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B70F3F69
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 06:05:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSwSm-0002aG-Qx; Fri, 08 Nov 2019 05:05:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iSwSk-0002Zl-6L
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 05:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wb0MQRco2gNtqmdoCrTCvtDYN+lTm02vuoHzZ+K9xyY=; b=hTuwJehiLtnwcUHcIo+KYUBrMO
 Fe62RnfBh5L3pW5E7ynM9ssJTYbtTqerFLbovMRYSvpiaRB4X+003KmEF6wFcFJyZC5kG2WCc2qB/
 sQjTnue7NhJTzuSk/JeoiSGL+zTzGs9wpJ4x6EK7pAKWHHnuH+juS3UfiagPJMpe3Lj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wb0MQRco2gNtqmdoCrTCvtDYN+lTm02vuoHzZ+K9xyY=; b=Fv8QHxXFnPsgOVG5sBnnzA8fb4
 i8MXzzRi/rsCMIxWCNce0u65lNZL4DNDYQhX1eT8ikkH27900uS//WTqhEF/A5goVylTuIbrDr8Vg
 HToavLDdZwVCOTtFs5O43br+axEpDb6U6k22+TkLUElR6Fv/Dan3GWozF8MJ9PhtfkmU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSwSi-005xL9-9N
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 05:05:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 9CF4E4AB1D;
 Fri,  8 Nov 2019 16:05:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1573189525; bh=a2rPgpc+938IVMV4JyL1sJcX7m3N1zP9MMTdEFpmwlA=; b=K
 DuTPtcFpIStx+UDkgXE779k/49Hl6S3mor1iExmQu5mNe3FgILVeVrKkTsZ5iCRc
 9sN6YIoLp5G5a7H/+Kd+W/Xygt5BmmDalIYWzFXylQoLG2z5Z01zjxwaQLNsFtTZ
 LnzacUiCDi0XMxVnqygyBxpEDEVz6N1IloVX0OmJyA=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0YvKwpnreShX; Fri,  8 Nov 2019 16:05:25 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 814064AB22;
 Fri,  8 Nov 2019 16:05:25 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 6C4764AB1D;
 Fri,  8 Nov 2019 16:05:24 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri,  8 Nov 2019 12:05:10 +0700
Message-Id: <20191108050512.4156-4-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191108050512.4156-1-tuong.t.lien@dektech.com.au>
References: <20191108050512.4156-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSwSi-005xL9-9N
Subject: [tipc-discussion] [net-next v2 3/5] tipc: add new AEAD key
 structure for user API
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
Cc: tipc-discussion@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

The new structure 'tipc_aead_key' is added to the 'tipc.h' for user to
be able to transfer a key to TIPC in kernel. Netlink will be used for
this purpose in the later commits.

Acked-by: Ying Xue <ying.xue@windreiver.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 include/uapi/linux/tipc.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
index 76421b878767..add01db1daef 100644
--- a/include/uapi/linux/tipc.h
+++ b/include/uapi/linux/tipc.h
@@ -233,6 +233,27 @@ struct tipc_sioc_nodeid_req {
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
