Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6545D2708A4
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Sep 2020 23:57:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kJONe-0004E0-6B; Fri, 18 Sep 2020 21:57:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kJONc-0004Do-OE
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Sep 2020 21:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rCQA6yvrFS8GW62f1efOQ46n2mi9gIXINvqSOXvia2o=; b=fW2cGtmOCYjqWkeASOEGQpK4ac
 RPWBkcOTF7H3Ws/MY0PHEbWfGQw7pc0MXm2d+pXNV5LiKobpwU6kuKqqK4HlnLEHsQFQnzNiV3j2Z
 rnz7Flx+C0ih/Tdu11MSs0r4bBEcX+NMKVCe4XP9pQnUFb+gs96H2ZTPwAOr6Zr52cGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rCQA6yvrFS8GW62f1efOQ46n2mi9gIXINvqSOXvia2o=; b=MsMe0g0KQ5frvZi+KhAkCsMSUG
 Z+v67HbTo7kw75YLBUEDomU8Yr6GVK9nK2/Cbgxa6ZeJSzjhz3MosbvAzw8mwHH7D6HRwUFpnojz4
 1n+Ej671DGVb3XWGgbPzXN2G0aaDwkvYCEGPkhYHfMoI3cJ+HpyEeYAC+4H/juQiHrJE=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJONY-00G7Bx-29
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Sep 2020 21:57:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4BC7315A0D937;
 Fri, 18 Sep 2020 14:40:23 -0700 (PDT)
Date: Fri, 18 Sep 2020 14:57:09 -0700 (PDT)
Message-Id: <20200918.145709.1875065294612270596.davem@davemloft.net>
To: wanghai38@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200918131819.28062-1-wanghai38@huawei.com>
References: <20200918131819.28062-1-wanghai38@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Fri, 18 Sep 2020 14:40:23 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kJONY-00G7Bx-29
Subject: Re: [tipc-discussion] [PATCH net-next] net: tipc: Supply missing
 udp_media.h include file
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

RnJvbTogV2FuZyBIYWkgPHdhbmdoYWkzOEBodWF3ZWkuY29tPg0KRGF0ZTogRnJpLCAxOCBTZXAg
MjAyMCAyMToxODoxOSArMDgwMA0KDQo+IElmIHRoZSBoZWFkZXIgZmlsZSBjb250YWluaW5nIGEg
ZnVuY3Rpb24ncyBwcm90b3R5cGUgaXNuJ3QgaW5jbHVkZWQgYnkNCj4gdGhlIHNvdXJjZWZpbGUg
Y29udGFpbmluZyB0aGUgYXNzb2NpYXRlZCBmdW5jdGlvbiwgdGhlIGJ1aWxkIHN5c3RlbQ0KPiBj
b21wbGFpbnMgb2YgbWlzc2luZyBwcm90b3R5cGVzLg0KPiANCj4gRml4ZXMgdGhlIGZvbGxvd2lu
ZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQo+IA0KPiBuZXQvdGlwYy91ZHBfbWVkaWEu
Yzo0NDY6NTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciChdGlwY191ZHBfbmxf
ZHVtcF9yZW1vdGVpcKIgWy1XbWlzc2luZy1wcm90b3R5cGVzXQ0KPiBuZXQvdGlwYy91ZHBfbWVk
aWEuYzo1MzI6NTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciChdGlwY191ZHBf
bmxfYWRkX2JlYXJlcl9kYXRhoiBbLVdtaXNzaW5nLXByb3RvdHlwZXNdDQo+IG5ldC90aXBjL3Vk
cF9tZWRpYS5jOjYxNDo1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIKF0aXBj
X3VkcF9ubF9iZWFyZXJfYWRkoiBbLVdtaXNzaW5nLXByb3RvdHlwZXNdDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hhaTM4QGh1YXdlaS5jb20+DQoNCkFwcGxpZWQuDQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNz
aW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lv
bgo=
