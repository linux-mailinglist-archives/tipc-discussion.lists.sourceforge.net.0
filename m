Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3166E3E6D
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Apr 2023 06:20:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1poGLN-0008PI-TL;
	Mon, 17 Apr 2023 04:19:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1poGLM-0008P9-2Z
 for tipc-discussion@lists.sourceforge.net;
 Mon, 17 Apr 2023 04:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rHplOJruaV3gpNryCBeTSI8z18olx8uLTFL773y45yI=; b=dYopqGCHrUkMxzMBrj+G0MYLwn
 7RGcZhDs3/5pGfrJLl88yRuKXvfqA/N3MfzM5hj5Zxwd8Y6P8szCZUDz4Ywdpl3lPA0X/6e+HjcE+
 vS7NbXwHqKw6L/Ol1KCTVi7l7TYmNi1156HHmLO6MTfoUm67fx5zItkvJSEdj1uGqWyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rHplOJruaV3gpNryCBeTSI8z18olx8uLTFL773y45yI=; b=ChO0NFVXofqkIlZ8UJKUWvj7Gm
 +4WW3XvxtTbYjtP0kdaNrsauLhXFI/XSX5OO6znAzQolz5jvIs8YBfWCAfxWH02DU5zaRom2uSSY6
 rZnJbe8xCHM453Lyl8FpLu/VWeYfyXw6aIO6tniJGUy/36S+Y1/Db4US3+h2hTl7/vKQ=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1poGLG-00AFAQ-Py for tipc-discussion@lists.sourceforge.net;
 Mon, 17 Apr 2023 04:19:55 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 x22-20020a9d6296000000b006a42c37ddcdso6293057otk.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 16 Apr 2023 21:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681705185; x=1684297185;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rHplOJruaV3gpNryCBeTSI8z18olx8uLTFL773y45yI=;
 b=AiVEVIiEap5aeK20R32qAmFiJ+mED6FbNAr2GJS9qh3zLohXDZRqYOjznZs97DQt+d
 faNaU0TbNwFKNPqzmwAuvjLPCHwJJFe0G2Pj3dLWrrRDho7zJXcrGR9QjcJNPttKnLWP
 3XL9UlOHTCyHQpmEZNwf/XWuIUy7AWYAcE5I7OLEZmmXQI+SX61mbBKVQvRKDRkHgBXZ
 98KIVRUqiTL1PrkUD9y1CXRnRL98dsgkinM9xtyJQaEu5H+oPTDI5UdLhzRPXdAAdElc
 V3qj2zR35cZBeRxhgfAmwHtuaUSzgxSGS+Oz6EPv79SEDK43ifXZYqXqm0CFMJUgGW9Y
 qEQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681705185; x=1684297185;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rHplOJruaV3gpNryCBeTSI8z18olx8uLTFL773y45yI=;
 b=YSvQlpaF1XROJ9kv9a3Duz08w3ICqEwQ0WNV9QUCD+ZNYgnvXy2v/ne1XekbSqmBL6
 9673iaaxt3lsxSb9hPbGH64GNLfmrihx43KkfDGvYP8/kjGrQn0lg5+SndwDwQx4REjM
 rgnntCL7ilrJzNgIsiUOAVHn+uZGbKnMeFRApCqraJy3c668swLLmaJ3oeqKq+iJNzCQ
 7I93pUJKFd6nN9zm5QlClMo0mx20UBLzuH3A4CikvcM3n8H3J4llunNB90L8aD2a0V9A
 PlT3G5Lpdg6uHySmWQHWzzNs1/rreEWnZJaxVicvkBoby8pu6dG0d1jjNMJeE7HBveE8
 I0zg==
X-Gm-Message-State: AAQBX9cqlT4PGgNpT/6OOkgjOSIlUiw4Q3RFLteX5eK/2drlQppPwKq7
 /NXrLG+MGgxTE0R6AEKDlKhAps51OqsgV28z2ILUJ06X
X-Google-Smtp-Source: AKy350Z03/nQy2C46aI2e5b7tW5RU8cMo/m/hhbKsUKVWecXucN2Mulu4oj/SEDmnSPK8U2k2tE8HsT6APhdxsxRDyQ=
X-Received: by 2002:a05:6830:1e78:b0:6a5:e9c9:5b58 with SMTP id
 m24-20020a0568301e7800b006a5e9c95b58mr661252otr.1.1681705184820; Sun, 16 Apr
 2023 21:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
In-Reply-To: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
From: prakash bisht <ps13.bisht@gmail.com>
Date: Mon, 17 Apr 2023 09:49:33 +0530
Message-ID: <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net, Xin Long <lxin@redhat.com>, 
 tung quang nguyen <tung.q.nguyen@dektech.com.au>, jmaloy@redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi John/Xin, Tung, Any thoughts on my previous email? We are
 using tipc for our product for quite a while and started facing this issue
 recently in a specific scenario we launch strace to monitor another process.
 Also i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ps13.bisht[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1poGLG-00AFAQ-Py
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Fwd: TIPC socket ( SOCK_SEQPACKET) cleanup issue
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgSm9obi9YaW4sVHVuZywKCkFueSB0aG91Z2h0cyBvbiBteSBwcmV2aW91cyBlbWFpbD8gV2Ug
YXJlIHVzaW5nIHRpcGMgZm9yIG91ciBwcm9kdWN0IGZvcgpxdWl0ZSBhIHdoaWxlIGFuZCBzdGFy
dGVkIGZhY2luZyB0aGlzIGlzc3VlIHJlY2VudGx5IGluIGEgc3BlY2lmaWMgc2NlbmFyaW8Kd2Ug
bGF1bmNoIHN0cmFjZSB0byBtb25pdG9yIGFub3RoZXIgcHJvY2Vzcy4KQWxzbyBpcyB0aGVyZSBh
bnkgd2F5IHRvIGRlbnkgY3JlYXRpb24gb2YgYW5vdGhlciB0aXBjIHNvY2tldCB3aXRoIHRoZSBz
YW1lCnRpcGMgYWRkcmVzcyA/ICBJbiBvdXIgY2FzZSBhcHBsaWNhdGlvbnMgbmVlZCBhIHVuaXF1
ZSB0aXBjIHNlcnZlciBzb2NrZXQuCgpUaGFua3MgYW5kIFJlZ2FyZHMsClByYWthc2gKCi0tLS0t
LS0tLS0gRm9yd2FyZGVkIG1lc3NhZ2UgLS0tLS0tLS0tCkZyb206IHByYWthc2ggYmlzaHQgPHBz
MTMuYmlzaHRAZ21haWwuY29tPgpEYXRlOiBNb24sIEFwciAzLCAyMDIzIGF0IDQ6MzPigK9QTQpT
dWJqZWN0OiBUSVBDIHNvY2tldCAoIFNPQ0tfU0VRUEFDS0VUKSBjbGVhbnVwIGlzc3VlClRvOiA8
dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4KCgpIaSBhbGwsCgoKCkkgYW0g
ZmFjaW5nIGFuIGlzc3VlIHdoaWxlIGNsb3NpbmcgdGhlIFRJUEMgc2VydmVyIHNvY2tldC4gSW4g
Y2VydGFpbgpzY2VuYXJpb3MsIGV2ZW4gYWZ0ZXIgY2xvc2luZyB0aGUgc2VydmVyIHNvY2tldCBm
ZCB0aGUg4oCYdGlwYyBzb2NrZXQgbGlzdOKAmQppcyBzdGlsbCBzaG93aW5nIGl0IGFzIGFsaXZl
LgoKSSBhbSBzdXJlIHRoYXQgdGhlIGZkIGhhcyBiZWVuIGNsb3NlZCBhcyB0aGUgbmV4dCBzb2Nr
ZXQgY3JlYXRpb24gcmVxdWVzdApnZXRzIHRoZSBzYW1lIGZkIGZyb20gbGludXguIEV2ZW4gd2hl
biB0aGUgcHJvY2VzcyBleGl0cywgdGhlIHN0YWxlIHNvY2tldAplbnRyeSBpcyBzdGlsbCBwcmVz
ZW50IGluIHRoZSDigJh0aXBjIHNvY2tldCBsaXN04oCZIGFuZCBpdCB2YW5pc2hlcyBvbmx5IGFm
dGVyCnJlYm9vdGluZyB0aGUgc3lzdGVtLgoKIEtlcm5lbCB2ZXJzaW9uIDogNC4xOS44MQoKU29j
a2V0IHR5cGUgOiAgICAgIFNPQ0tfU0VRUEFDS0VUCgoKCkFsc28sIGlzIHRoZXJlIGFueSB3YXkg
b2YgZmluZGluZyBvdXQgd2hldGhlciBhIHRpcGMgc29ja2V0IGJlbG9uZ3MgdG8Kd2hpY2ggbGlu
dXggcHJvY2VzcyA/CgoKCldvdWxkIGFwcHJlY2lhdGUgYW55IGhlbHAuCgoKVGhhbmtzLAoKUHJh
a2FzaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlw
Yy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMt
ZGlzY3Vzc2lvbgo=
