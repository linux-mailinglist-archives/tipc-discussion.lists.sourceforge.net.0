Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07415686B1
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 Jul 2019 11:56:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hmxic-0005G9-6l; Mon, 15 Jul 2019 09:56:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hmxia-0005G2-TF
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Jul 2019 09:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=130d/j7n82IPTSuMUlgpFHS3+AIBmYjoCoXGoZba/So=; b=WpfqP6OvPN7zEpYqw1ZWC1d7Ql
 7z9E1FvRTiqIYx+cIhUeTghBl76Km/IW6Cb76aianMNpKcrQ/maKpF0iOBrQ98TxtsohPuHD+Im08
 ZifgBHQPpSo+KsL3pxdpB33WnUVz8XY1VTZP/yEgINH5B15LMeYTpdmRkG/oCwC2b1L0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=130d/j7n82IPTSuMUlgpFHS3+AIBmYjoCoXGoZba/So=; b=ZPlTNQ2YaaZGktPIvuXXeGUgWa
 wRkhTmljN5FlPrtmTf1p8jghqRM/Nym5/zIbyphtXH2MEJMoRK4peL7j58PGmo7nioLAApENwTvbx
 oTwZGesocmY6BKJJFhMufciInU3hFz3ccoVBHA8UPB2lIwWJSD2xr/g2K/IM+KnlXHHI=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hmxiX-002BW5-3r
 for tipc-discussion@lists.sourceforge.net; Mon, 15 Jul 2019 09:56:24 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6F9tjU2007919
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Mon, 15 Jul 2019 02:55:55 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 15 Jul
 2019 02:55:34 -0700
To: Mahesh Kumar <lmk_in@yahoo.com>, <tipc-discussion@lists.sourceforge.net>
References: <1593727072.553762.1562990335581.ref@mail.yahoo.com>
 <1593727072.553762.1562990335581@mail.yahoo.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <df6091ec-b1db-659f-b2ed-eb18ea40c111@windriver.com>
Date: Mon, 15 Jul 2019 17:44:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1593727072.553762.1562990335581@mail.yahoo.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hmxiX-002BW5-3r
Subject: Re: [tipc-discussion] TIPC ; config trouble ; help request
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

T24gNy8xMy8xOSAxMTo1OCBBTSwgTWFoZXNoIEt1bWFyIHZpYSB0aXBjLWRpc2N1c3Npb24gd3Jv
dGU6Cj4gVGlwYyBUZWFtLAo+IAo+IEdyZWV0aW5ncyEuCj4gSSBoYXZlIGJlZW4gdXNpbmcgVElQ
QyBmb3IgYWJvdXQgYSB5ZWFyIHdpdGhvdXQgYW55IGlzc3VlSG93ZXZlciB0aGUgVElQQyB0b29s
IGlzIGJhaWxpbmcgb3V0IHdoZW4gSSB0cmllZCB0byBzZXQgYWRkcmVzcywgYmVhcmVyCj4gCj4g
Cj4gLyAjIHRpcGMgbm9kZSBzZXQgYWRkciAxLjEuMTAwCj4gCj4gZXJyb3I6IE9wZXJhdGlvbiBu
b3QgcGVybWl0dGVkCj4gCj4gLyAjIHRpcGMgYmVhcmVyIGVuYWJsZSBtZWRpYSBldGggZGV2wqBp
ZW9iYwo+IAo+IGVycm9yOiBJbnZhbGlkIGFyZ3VtZW50Cj4gCj4gLyAjCj4gCj4gSSBhbSB1c2lu
ZyB0aGUgbmV3IGtlcm5lbCBub3c7Cj4gwqB1bmFtZSAtYUxpbnV4IDJjM2YwYjAwMTkwMF8xX1JQ
XzAgNC40LjE4MCAjMSBTTVAgVHVlIEp1biAyNSAxNTozNjoxMCBQRFQgMjAxOSB4ODZfNjQgeDg2
XzY0IHg4Nl82NCBHTlUvTGludXgKPiDCoGRtZXNnIG91dHB1dCA7IGdyZXAgLWkgVElQQyBkLnR4
dFvCoCDCoDI5LjQzNjU5OV0gdGlwYzogQWN0aXZhdGVkICh2ZXJzaW9uIDIuMC4wKVvCoCDCoDI5
LjQzNjc2OF0gdGlwYzogU3RhcnRlZCBpbiBzaW5nbGUgbm9kZSBtb2RlCgpTdXNwZWN0ZWQgc29t
ZSBUSVBDIHBhdGNoZXMgaW50ZWdyYXRlZCB0aHJvdWdoIDQuNC4xODAgcmVsZWFzZQppbnRyb2R1
Y2VkIHJlZ3Jlc3Npb24uIFRoZSBtb3N0IHNpbXBsZXN0IG1ldGhvZCB0byBpZGVudGlmeSB0aGUg
aXNzdWUgaXMKdG8gcmV2ZXJ0IHNvbWUgVElQQyBwYXRjaGVzIHRvIGlkZW50aWZ5IHdoaWNoIG9u
ZXMgY2F1c2VkIHRoZSByZWdyZXNzaW9uLgoKPiAKPiBbMmMzZjBiMDAxOTAwXzFfUlBfMDovXSQg
dGlwYy1jb25maWcgLW50VHlwZcKgIMKgIMKgIMKgTG93ZXLCoCDCoCDCoCBVcHBlcsKgIMKgIMKg
IFBvcnQgSWRlbnRpdHnCoCDCoCDCoCDCoCDCoCDCoCDCoCBQdWJsaWNhdGlvbiBTY29wZTDCoCDC
oCDCoCDCoCDCoCAxNjc4MTMxM8KgIMKgMTY3ODEzMTPCoCDCoDwxLjEuMTowPsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIDE2NzgxMzEzwqAgwqAgem9uZTHCoCDCoCDCoCDCoCDCoCAxwqAgwqAg
wqAgwqAgwqAgMcKgIMKgIMKgIMKgIMKgIDwxLjEuMTo0ODMzOTA4NzQ+wqAgwqAgwqAgwqAgwqAg
NDgzMzkwODc1wqAgwqBub2RlMcKgIMKgIMKgIMKgIMKgIDg4wqAgwqAgwqAgwqAgwqA4OMKgIMKg
IMKgIMKgIMKgPDEuMS4xOjI4NzA5NDMzMjY+wqAgwqAgwqAgwqAgwqAyODcwOTQzMzI3wqAgem9u
ZTE1MDAzwqAgwqAgwqAgNcKgIMKgIMKgIMKgIMKgIDXCoCDCoCDCoCDCoCDCoCA8MS4xLjE6MzU1
Njc4MTA5Nj7CoCDCoCDCoCDCoCDCoDM1NTY3ODEwOTfCoCB6b25lWzJjM2YwYjAwMTkwMF8xX1JQ
XzA6L10kwqAKPiAKPiBwbGVhc2UgbGV0IG1lIGtub3cgaWYgYW55IGlzc3VlLgo+IHRoYW5rcyAm
IHJlZ2FyZHNNYWhlc2gga3VtYXIuTAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+IHRp
cGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFp
bGluZyBsaXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
