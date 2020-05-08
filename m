Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 435B21CA258
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 May 2020 06:41:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jWuor-00034V-JU; Fri, 08 May 2020 04:41:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hung.ta@openclovis.com>) id 1jWuop-00034G-Rr
 for tipc-discussion@lists.sourceforge.net; Fri, 08 May 2020 04:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MieNiAJBrFbhc+AxT06HCUJSaUh6Je/OKDNybTibKgw=; b=DCOBbFqzqQb0CZQUuDtkBxuJRL
 XoRBtWfxEcWOH2Wat3Kx7yMPw7BZfxg0HbDVU3/Qje2JQkJSlHr+9Ol26eJ2KNEghahcXMFE9O/lG
 NrlBTZjyX6epo8PzyaHcqvZsjjWfzWlpsWz9IHDT5QqUu9TrgYAEYW2SU9ovYikYlzcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MieNiAJBrFbhc+AxT06HCUJSaUh6Je/OKDNybTibKgw=; b=d
 jUKA0yAS/3HLmTcd0X26OK7gAtr4Eh/f+dRpP16lCTvpw1NqXu0/YbfGiOPocM1Htk/Akz0ISLbYk
 mSOADNHXOncEB536DDUTlH347kgzIpzYPBc8pAowps3YgrxjztVTJr0qKlTDwB0mDHGc24cK1BTw9
 CEX9mD9zXyFGe3YY=;
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jWuon-00F5rV-0R
 for tipc-discussion@lists.sourceforge.net; Fri, 08 May 2020 04:41:03 +0000
Received: by mail-ej1-f68.google.com with SMTP id n17so249061ejh.7
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 07 May 2020 21:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openclovis-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=MieNiAJBrFbhc+AxT06HCUJSaUh6Je/OKDNybTibKgw=;
 b=NNMj0/DmEsASE/CHpCvpE9uAtEIGg3nDpTHAyoUazC0ufKQOXaN5TTe+gKRAaM71De
 l9UFtpUdKwdmEcvgwWYERONgpolXnmDP6xDBbJ2rhInHrevh+ANyfBnK+z4cAAXxcPSg
 x7Tu7S2Z11sw4XCA5T9p7z/BPWZ6gHpTsnMrHk5WYIX48HHgs2CCit+wJKf9ayhDhSvU
 edw4YQz7ZmtqjELAwa2lMIhx5+jPb1oLxVXCbdWzQDP7UKl77dTxwNGZRRo6RdaP7QHG
 gSI7nJjpNdm5mDzHZfs74J737XlVM70FtX9LqDKXtQwyxSdTXFAlsSaK3uX6rvezAbPj
 Z+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MieNiAJBrFbhc+AxT06HCUJSaUh6Je/OKDNybTibKgw=;
 b=pdJKA2hFOJxUxKaMDJGydKoVKpO3DU2J7+ZhWqAYYqalbzqejzBHnfgGuh2si+0ke7
 qYSntcrD5TCsDMFyHH4bUxcYx9dAmpl0kek8x4Ar/rYbldJ9fVmPAm+NF5wv+KoVo88y
 t6iA6g3npueZPmCnvO8S+fLTFFynq2wMI4/pNTgrXZFrwlS8mWS/AhN+zJ/+VLzHB6fr
 yzlDlA/tgEHmBPlY5IwO6WSSi59vVi8dcKTy1xPRbeYNW1yXdaSqs8tDRi4radUaR86z
 6v83TKAgfqChS8aWnyLoOPYIgPXjY66Z7uXxcpO33f0ycWVo1OhzDYFQ58Rs3AMeD+Un
 pYTQ==
X-Gm-Message-State: AGi0PubRQS3ShUZMXDXObBlECtL1WlUYVGqppwrtaqnIVQqOI6wz0x9m
 lsF+i6KG0f5s4eA0AO5lTvL3ImSwbfJVvghCC5ETh9bHgZs=
X-Google-Smtp-Source: APiQypKGx3jiwLq60VQ+7eyhUTQhSwR7VpbQE4+A9Q4p0zIFh0SxKB6fsveT4i8dmxfgHKV48cMxEWbVtECv1tAE/w4=
X-Received: by 2002:adf:8403:: with SMTP id 3mr255312wrf.186.1588906913208;
 Thu, 07 May 2020 20:01:53 -0700 (PDT)
MIME-Version: 1.0
From: Hung Ta <hung.ta@openclovis.com>
Date: Fri, 8 May 2020 10:01:17 +0700
Message-ID: <CAH0Ghhvy9=hq8mBh61iag3-PMAFBMpmgaJWq3VmQA9szzLP4KQ@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.68 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jWuon-00F5rV-0R
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC_WITHDRAW event comes late
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

Hi TIPC experts,

I'm using the TIPC library in my project which needs to be aware of a node
leaves the cluster.

So, I use socket type AF_TIPC and SOCK_SEQPACKET and connect it
to TIPC_TOP_SRV.

I tried to get several nodes up and then make one of them leave and then I
can see the event TIPC_WITHDRAW seen, but the issue is it comes very late,
in particular,  it comes about 10 seconds late after a node left the
cluster.
I'm using Ubuntu 16.04, kernel 4.4.0-87-generic.
The same issue also occurs in Ubuntu 14.04.

Why is it too late?
Appreciate your help.

Thanks and regards,
Hung

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
