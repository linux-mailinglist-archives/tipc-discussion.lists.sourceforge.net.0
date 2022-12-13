Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5B064B06C
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Dec 2022 08:31:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1p4zkg-0003fx-TS;
	Tue, 13 Dec 2022 07:30:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <harish.chinnarajan@gmail.com>) id 1p4zkf-0003fr-JY
 for tipc-discussion@lists.sourceforge.net;
 Tue, 13 Dec 2022 07:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EtJ63C8XSG9kxzJ0dS9nqxD0wQ9UO+YB25fw6rF7gKg=; b=huw2AImVkVaMLM3HZuj6/ks+Zf
 +Kh+nqMryZuH97FfHb7ZAO1eWLOk07nsnUp2o8eXRCA1mTdmLqguwkEfKYBfdvwHWujCeYNjoe5hF
 syRKFvkk5OEkPQGycf3SY0JDENMUHxt6RjIaFOxZO30PZTo3eo2CZI+FTZPbiee3WcNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EtJ63C8XSG9kxzJ0dS9nqxD0wQ9UO+YB25fw6rF7gKg=; b=Z
 ZDAHHWkxpgWdNAjsnGUBG2yMCjELZ9G32vyAiPAoaROIVfWtipI2h6+Ykx8OyUs6YrOlt+mjddaBq
 93ZuPVJep7yxJm3pAB1S1h5WJe3li98E9waUqTp/cKsp3WUAR+c0nEYmOcRPzuhPlTf1MQUf/QM1f
 0tqDTy4XSDpUkE+Q=;
Received: from mail-ej1-f44.google.com ([209.85.218.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p4zke-00FWEx-Tz for tipc-discussion@lists.sourceforge.net;
 Tue, 13 Dec 2022 07:30:57 +0000
Received: by mail-ej1-f44.google.com with SMTP id b2so34366044eja.7
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 12 Dec 2022 23:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=EtJ63C8XSG9kxzJ0dS9nqxD0wQ9UO+YB25fw6rF7gKg=;
 b=iL72OTl+nK98gQK+LhADH63Zosz2EUxhqlcL3bG7OfnYjKSrbgQbOttwJLd4+3NXw5
 9nPfYpdLvFq3dMVsHmWQBQe6mVg9seKgVbxs4wtAO7yYvnwVPjhAfLriBZgMROOzvA0Q
 H/S8QbHHaVtOn1zzLngTmnos3f/c5dw22ICJBzjXZPSAxxgrATAOynqjUNUG22haC92Q
 HIvYyzkUEhTjXbmPHrSWYOIN7W/oTv3nxigp5Ewcw+A8rOuWmZD7ESNV/O8zXOY+0HRY
 WAHhCWZ7XUCAobrcpNRhkH1ed/NxoOCpYOTJOCi8+J6eJ2AAWwecaFfDd/2QOHQUxkmr
 n0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EtJ63C8XSG9kxzJ0dS9nqxD0wQ9UO+YB25fw6rF7gKg=;
 b=WfWwop1cFOtLps/GIq4Yk2jmFVLAQxFLUDtTauR5wStFe7x4DiCQDMWm+B+F7uoX3U
 frcdly6KIHKRdJ8eRKbym/RbLDEXYxG73WT9t/v97L2d8V4Z6PTbqCTZNHlqpwLwrCK1
 pY0isFnEGsluZYOtViJRXjRVF5p4YlyMxRmQtMCIEIbPDuwM3bDihOk2+fFmNpHAo69R
 EX24alRp3Wqimcb+gMoSSu440lXC6PPbs+/LsaeGigbH//R/3wpWvMkgK986Aooq/2jS
 KFS/MtX5Iy53JW2GcFjUsV6Lsc9K1ZSm8efDxl2oBat3vQF+o0+Rlxw2tujQTp68SwnL
 0aDg==
X-Gm-Message-State: ANoB5plStuDSy+RyyGDb9f3uE+PtCYVFyHP40yVkN+6QCIwaMj0r2NmI
 LAvEXZMFu8katRyuYVEm+JwFxOWTCznFDnJ23e/EFXT7npc=
X-Google-Smtp-Source: AA0mqf4kjwE/CRw4AQOecFWkMoIU2AruOpBXniFM3Zf330CgqigvM1yWAFMK+eXCyMhTZ3WiE8iEk0PVGyosmkYXdrw=
X-Received: by 2002:a17:907:3c23:b0:7c0:c0c9:d7c7 with SMTP id
 gh35-20020a1709073c2300b007c0c0c9d7c7mr24936786ejc.382.1670916649988; Mon, 12
 Dec 2022 23:30:49 -0800 (PST)
MIME-Version: 1.0
From: Harish Chandrasekaran <harish.chinnarajan@gmail.com>
Date: Tue, 13 Dec 2022 13:00:38 +0530
Message-ID: <CA+z2G=PX8WpOUYSNfoiKX1MFz30do7vCOBsqO=gz=b3-=_BA0g@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello all, I'm looking for a utility/command to get the tipc
 packet/connection information while running the client and server within
 the same card/kernel. The "tipc link statistics show" gives some insights
 regarding the packets across the bearers Link
 <10300411:BEARER1-10300431:BEARER-2>
 ACTIVE MTU:14000 Priority:10 Tolerance:1500 ms Window:50 packets [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harish.chinnarajan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.44 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p4zke-00FWEx-Tz
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC Packet statistics
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hello all,

I'm looking for a utility/command to get the tipc packet/connection
information while running the client and server within the same
card/kernel.

The "tipc link statistics show" gives some insights regarding the packets
across the bearers
Link <10300411:BEARER1-10300431:BEARER-2>
  ACTIVE  MTU:14000  Priority:10  Tolerance:1500 ms  Window:50 packets
  RX packets:9013188 fragments:0/0 bundles:0/0
  TX packets:9430977 fragments:760/190 bundles:0/0
  TX profile sample:613736 packets average:42 octets
  0-64:93% -256:7% -1024:0% -4096:0% -16384:0% -32768:0% -66000:0%
  RX states:2155490 probes:423110 naks:8365 defs:11806 dups:11875
  TX states:2199617 probes:413191 naks:11866 acks:290 retrans:8371
  Congestion link:0  Send queue max:0 avg:0


I'm looking for something similar to the above or something similar to what
netstat provides for tcp packets/connections with in the same card/machine

netstat -s
Tcp:
    1312727 active connection openings
    325217 passive connection openings
    987300 failed connection attempts
    9 connection resets received
    41 connections established
    84939296 segments received
    86976822 segments sent out
    985790 segments retransmitted
    0 bad segments received
    1821 resets sent

Eg: The  hello_server and hello_client run on the same machine. I would
like to check if there are any naks or duplicates or packet drops or if
there are any connection resets or failed connection attempts.

I tried to check if *netstat statistics *captures TIPC connection related
information but it doesn't seem to capture the TIPC related info.

Kindly let me know if there are any utilities or TIPC commands which I can
use to gather such information?

Would greatly appreciate any help.

Sincerely,
Harish

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
