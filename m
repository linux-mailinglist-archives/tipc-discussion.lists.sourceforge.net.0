Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4390F2809C7
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Oct 2020 23:56:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kO6Z3-0006NT-CD; Thu, 01 Oct 2020 21:56:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kO6Z1-0006NK-NY
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 21:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7X2m1hPmPK27Un3Apbm0zx3SX35Ljz6DByx9+FbFOoY=; b=H+nagoMZEVppvIAAiUN8OEfyqq
 gqZU07tE+LXtUFbFOOvYquDnZ6hR2G2LBgakZLg4Jjdk5CCeXcYvD4LuXX2y300VvUJN4OL4RGUlK
 mahfcctkCeuK4yvBFpkyBtJLeaC7qjf9b7R2RHZ3Pj0l2XoN98QH1NK69cRwugY1dL6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7X2m1hPmPK27Un3Apbm0zx3SX35Ljz6DByx9+FbFOoY=; b=n
 ABRqiTik7oVc8udhZF1Rh+O9vdPyROe33lbV77aFlYkaIeSDJjcjhWswG9rCM4T2Kw+1WdxEQKIyl
 jiOJhWZP/3Xsu4j9SrgxZEydfGdhfdZj16HoARDvdmPAyWaPhm/GWIZBf8gKY+HoJ+ulLhg3xBBvP
 5cNJjISBbLrmDIww=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kO6Yj-00GZLv-5G
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 21:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601589363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7X2m1hPmPK27Un3Apbm0zx3SX35Ljz6DByx9+FbFOoY=;
 b=LcF6t50H/0SOwxFt709RB6XuihCka19z3wBs1RJPA8UAnvGtbBUmbInrBYtr44WSfuV3hn
 fJNsfw9dV0k4ABCtip3K/zxDmcRf1Hfx2z4FcKPSSxuZh8h+kk2pST2yl7kEM+ExgCyJE2
 xVRpHi9sZJ3I/KoNqeR7KqCmVzR668Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-_UigwWjhOHabaQJTbNKFXQ-1; Thu, 01 Oct 2020 17:55:49 -0400
X-MC-Unique: _UigwWjhOHabaQJTbNKFXQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8028C101FFA2;
 Thu,  1 Oct 2020 21:55:48 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 04CD819C59;
 Thu,  1 Oct 2020 21:55:47 +0000 (UTC)
From: Jon Maloy <jmaloy@redhat.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
Message-ID: <245485cd-b543-f6b2-392b-eb76da7999d3@redhat.com>
Date: Thu, 1 Oct 2020 17:55:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: blitiri.com.ar]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kO6Yj-00GZLv-5G
Subject: [tipc-discussion] tipc.py
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SSBhbSB1cGRhdGluZyB0aGUgcHJvZ3JhbW1lcidzIG1hbnVhbCwgYW5kIHJlYWxpemVkIHRoYXQg
dGhlIFB5dGhvbiBBUEkgCmlzIG1pc3NpbmcuClNpbmNlIHRoZXJlIGFyZSBzbyBtYW55IHByb2dy
YW1tZXJzIGtub3dpbmcgUHl0aG9uIG5vd2FkYXlzLCBidXQgbm90IEMsIApJIHRoaW5rIGl0IHdv
dWxkCmJlIHZlcnkgdXNlZnVsIHRvIGhhdmUgdGhpcyBBUEkgaW4gdGhlIG1hbnVhbCwgc28gdGhv
c2UgcHJvZ3JhbW1lcnMgY2FuIApnZXQgYSBmZWVsaW5nCmZvciBob3cgc2ltcGxlIGl0IHRvIHVz
ZSBUSVBDLgoKVHVvbmcgc3RhcnRlZCBkZXZlbG9wbWVudCBvZiBhbiBBUEkgYmFzZWQgb24gdGhl
IGxpYnRpcGMgQy1BUEksIGJ1dCBpdCAKc2VlbXMgdG8gbWUgaXQgd2FzIG5ldmVyIGZpbmlzaGVk
LgpIb3dldmVyLCBQeXRob24gZG9lcyBzaW5jZSBhIGxvbmcgdGltZSBoYXZlIG5hdGl2ZSBUSVBD
IHN1cHBvcnQsIAphbGxlZ2VkbHkgYm90aCBpbiBQeXRob24gMiBhbmQgUHl0b24gMy4KSSBoYWQg
bmV2ZXIgc2VlbiB0aGF0IEFQSSB1bnRpbCBub3csIGJ1dCBhZnRlciBzb21lIGdvb2dsaW5nIEkg
Y2FtZSBvdmVyIAp0aGUgZm9sbG93aW5nIGxpbmssIHRoYXQgc2VlbXMgdG8gY29udGFpbgp0aGF0
IG5hdGl2ZSBpbXBsZW1lbmF0aW9uOgoKaHR0cHM6Ly9ibGl0aXJpLmNvbS5hci9wL3B5dGlwYy8K
Ckkgd29uZGVyIGlmIGFueWJvZHkgaGFzIHRoZSB0aW1lIHRvIHRyeSB0aGlzIG9uZSwgYW5kIHZl
cmlmeSwgdXNpbmcgdGhlIApleGFtcGxlcywgdGhhdCBpdCByZWFsbHkgd29ya3MuCkl0IHdvdWxk
IGJlIGVtYmFycmFzc2luZyB0byBhZGQgdGhpcyB0byB0aGUgbWFudWFsIGlmIGl0IHR1cm5zIG91
dCBpdCAKZG9lc24ndCB3b3JrLgoKUmVnYXJkcwovLy9qb24KClBTLiBEb2VzIGFueWJvZHkgdm9s
dW50ZWVyIHRvIGJlIGJlY29tZSBjby1tYWludGFpbmVyIG9mIHRoZSBob21lIHBhZ2UgCmFuZCBw
cm9qZWN0IHBhZ2UKIMKgwqDCoMKgwqAgYXQgU291cmNlRm9yZ2U/IEkgdGhpbmsgd2Ugc2hvdWxk
IGV2ZW4gY29uc2lkZXIgbW92aW5nIGl0IHRvIApHaXRMYWIgb3IgR2l0SHViLgogwqDCoMKgwqDC
oCBTaW5jZSB3ZSBoYXZlIG91ciBvd24gZG9tYWluICh0aXBjLmlvKSB0aGF0IGNvdWxkIGVhc2ls
eSBiZSAKcmUtc3RlZXJlZCB0byBhIGRpZmZlcmVudAogwqDCoMKgwqDCoCBob3N0IHN5c3RlbS4K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlz
Y3Vzc2lvbgo=
