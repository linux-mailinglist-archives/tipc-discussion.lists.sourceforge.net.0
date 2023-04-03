Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 225206D42DE
	for <lists+tipc-discussion@lfdr.de>; Mon,  3 Apr 2023 13:04:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pjHye-0001Q9-B9;
	Mon, 03 Apr 2023 11:03:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1pjHyb-0001Pj-8d
 for tipc-discussion@lists.sourceforge.net;
 Mon, 03 Apr 2023 11:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTgv1D+QP8+wZRk6qyWlj1kz/ZtNZvt1A07Upje2uqc=; b=O7mgPmDS3FZcHIlnTjf69zY6fn
 1RTPBGzdk5pw1Evgto5Kn8UOgaZtonkPUEUtAqzpz6F3Bgququlfj1pDRCeGVHyetR4Pl2Gxo3gsf
 kXrrZaSLTX1dWJlqnWUxtzn4v2KqWXs1QiutOCKJ8RYh+sWvYU2rKXbDjKU+9LEDqwKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KTgv1D+QP8+wZRk6qyWlj1kz/ZtNZvt1A07Upje2uqc=; b=g
 pPi3nzpkAH4C1V+DgCpSoZhMDICsy1PE+ohe+cnXoDXNTiDUhJ9KwHYmJndLYKJBgQzJkBlpsB1St
 6euhwLTunxLu6H3rKKOP3nvWSCObuw+V4nxVIrJeuPAtjZRm34okRNoM5fSbbAbhV3FouaduPb2oz
 SNGB4naJCVefkBto=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pjHyV-0002rM-Tt for tipc-discussion@lists.sourceforge.net;
 Mon, 03 Apr 2023 11:03:52 +0000
Received: by mail-oi1-f174.google.com with SMTP id r14so15719160oiw.12
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 03 Apr 2023 04:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680519822;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=KTgv1D+QP8+wZRk6qyWlj1kz/ZtNZvt1A07Upje2uqc=;
 b=FZFxf8210a1pWGpkCkaaDpcdKi9UypICf1Sq2wPeY4tE/EBaSp9nRDqZOEuGgaZIA1
 QuSRkLOsU6GlWKIn5V7EnCXr8SLDYJnSWpqeA3ogL35HOtY/RBIiMAi1W9nabEzdCr59
 RAm5u8PUaTunZ1Rj04Um1Hh8N6stWKq4VnEdBTTEhAHln6IuCM3lGzvuxkBOzJJQb23v
 BJnsKJH4NDuE824w4XEq/vMjdfM8+QBk9u68oVjXM9WMYWa3ubqr6+S1Lwx+APijzLV8
 FEjwVJca8um6TF4SAbKZFqYavRQULrgaPno1Jt6jx48JW20bIdky3nmWalwHy/3Dq7MT
 qv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680519822;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KTgv1D+QP8+wZRk6qyWlj1kz/ZtNZvt1A07Upje2uqc=;
 b=dSmYpkYWrmyqM3+F9XJNnkQppjgzD0D1KCY8PKlAOFXPDg+4cmp5DAjUPXHB8sgAGn
 i/muWCcTl/TsIEi4Jt1uS1OvHekYtAOX65D0N49td+XmmHNQt3d38c8/R7Nt1HK8t3EJ
 FUHX1ss4hgfBZWJhazkBllwds2Xh5QRl7apfz8hn4tAijIue7oAnsvDWkMQP0ZdK/OIY
 Upv6LAhVV4/S6QD1nM9o7nSdAgoF76VpvruM8I5xuMM//8NQgKMtNPqRnDfLb1GYPOJV
 67T7dqOGSv9vVpIKrAYP48e/fjmugArtls3Xppwq4f1i/xNVAIKDBr612n5snts/+idJ
 BSmg==
X-Gm-Message-State: AO0yUKXZ8AIwMBlo6lAQQdpHU6MZssby8pjrmELmmmwCCO2Q2tBCS5Wh
 pf7LR5vcU9Fy+D3E/K7VIKRBuL0lmixnokkr3BR3k4qRqe4=
X-Google-Smtp-Source: AK7set+47hkiXFrVnvHNdlXYVAEZXNnJVTFONHtx57vsJr2UGW2eUu/UKS11f9qBsZg/RZT8VC+R50ebVIcvG22pr2o=
X-Received: by 2002:a54:4792:0:b0:386:bb7a:5c85 with SMTP id
 o18-20020a544792000000b00386bb7a5c85mr11045317oic.11.1680519820676; Mon, 03
 Apr 2023 04:03:40 -0700 (PDT)
MIME-Version: 1.0
From: prakash bisht <ps13.bisht@gmail.com>
Date: Mon, 3 Apr 2023 16:33:29 +0530
Message-ID: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi all, I am facing an issue while closing the TIPC server
    socket. In certain scenarios, even after closing the server socket fd the
    ‘tipc socket list’ is still showing it as alive. I am sure that the fd
    has been closed as the next socket creation request gets the same fd from
    linux. Even when the process exits, the stale socket entry is still present
    in the ‘tipc socket list� [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ps13.bisht[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.174 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.174 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1pjHyV-0002rM-Tt
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC socket ( SOCK_SEQPACKET) cleanup issue
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

SGkgYWxsLAoKCgpJIGFtIGZhY2luZyBhbiBpc3N1ZSB3aGlsZSBjbG9zaW5nIHRoZSBUSVBDIHNl
cnZlciBzb2NrZXQuIEluIGNlcnRhaW4Kc2NlbmFyaW9zLCBldmVuIGFmdGVyIGNsb3NpbmcgdGhl
IHNlcnZlciBzb2NrZXQgZmQgdGhlIOKAmHRpcGMgc29ja2V0IGxpc3TigJkKaXMgc3RpbGwgc2hv
d2luZyBpdCBhcyBhbGl2ZS4KCkkgYW0gc3VyZSB0aGF0IHRoZSBmZCBoYXMgYmVlbiBjbG9zZWQg
YXMgdGhlIG5leHQgc29ja2V0IGNyZWF0aW9uIHJlcXVlc3QKZ2V0cyB0aGUgc2FtZSBmZCBmcm9t
IGxpbnV4LiBFdmVuIHdoZW4gdGhlIHByb2Nlc3MgZXhpdHMsIHRoZSBzdGFsZSBzb2NrZXQKZW50
cnkgaXMgc3RpbGwgcHJlc2VudCBpbiB0aGUg4oCYdGlwYyBzb2NrZXQgbGlzdOKAmSBhbmQgaXQg
dmFuaXNoZXMgb25seSBhZnRlcgpyZWJvb3RpbmcgdGhlIHN5c3RlbS4KCiBLZXJuZWwgdmVyc2lv
biA6IDQuMTkuODEKClNvY2tldCB0eXBlIDogICAgICBTT0NLX1NFUVBBQ0tFVAoKCgpBbHNvLCBp
cyB0aGVyZSBhbnkgd2F5IG9mIGZpbmRpbmcgb3V0IHdoZXRoZXIgYSB0aXBjIHNvY2tldCBiZWxv
bmdzIHRvCndoaWNoIGxpbnV4IHByb2Nlc3MgPwoKCgpXb3VsZCBhcHByZWNpYXRlIGFueSBoZWxw
LgoKClRoYW5rcywKClByYWthc2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
